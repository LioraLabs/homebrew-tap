#!/usr/bin/env python3
"""Regenerate Formula/cliban.rb from a release's SHA256SUMS.

    ./gen_formula.py v0.2.1 > Formula/cliban.rb
"""
import subprocess
import sys

REPO = "LioraLabs/cliban"
TARGETS = {
    "aarch64-apple-darwin": ("on_macos", "on_arm"),
    "x86_64-apple-darwin": ("on_macos", "on_intel"),
    "aarch64-unknown-linux-musl": ("on_linux", "on_arm"),
    "x86_64-unknown-linux-musl": ("on_linux", "on_intel"),
}


def main():
    tag = sys.argv[1]
    version = tag.lstrip("v")
    url = f"https://github.com/{REPO}/releases/download/{tag}/SHA256SUMS"
    sums_text = subprocess.run(
        ["curl", "-fsSL", url], capture_output=True, text=True, check=True
    ).stdout

    sums = {}
    for line in sums_text.splitlines():
        digest, name = line.split()
        sums[name.lstrip("*")] = digest

    blocks = {"on_macos": [], "on_linux": []}
    for target, (os_block, arch_block) in TARGETS.items():
        archive = f"cliban-{tag}-{target}.tar.gz"
        if archive not in sums:
            sys.exit(f"{archive} missing from {url}")
        blocks[os_block].append(
            f"    {arch_block} do\n"
            f"      url \"https://github.com/{REPO}/releases/download/{tag}/{archive}\"\n"
            f"      sha256 \"{sums[archive]}\"\n"
            f"    end"
        )

    print(f'''# Generated from the {tag} SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/{REPO}"
  version "{version}"
  license "MIT"

  on_macos do
{chr(10).join(blocks["on_macos"])}
  end

  on_linux do
{chr(10).join(blocks["on_linux"])}
  end

  def install
    bin.install "cliban"
    bin.install "cliband"
  end

  test do
    assert_match "cliban #{{version}}", shell_output("#{{bin}}/cliban --version")
    assert_match "cliband #{{version}}", shell_output("#{{bin}}/cliband --version")
  end
end''')


if __name__ == "__main__":
    main()
