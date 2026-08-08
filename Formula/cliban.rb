# Generated from the v0.7.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.7.0/cliban-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "54de41c1210a37b25b4b88fd60d90c7c152a6b9657bc47d83b2ab0c2f4cb1629"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.7.0/cliban-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb2d25afa57594efd80bd67d7b3d8a8e8e4b36fdf35c32afa754f2bd838659cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.7.0/cliban-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "997e000f816bfd710c7a2589143e45070c28a105dcc7eb8c006d0f0e145b3234"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.7.0/cliban-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6975df33db70f4bd81462a4e9ac89204ce94567e71e12f9d6c43af5ec002cef4"
    end
  end

  def install
    bin.install "cliban"
    bin.install "cliband"
  end

  test do
    assert_match "cliban #{version}", shell_output("#{bin}/cliban --version")
    assert_match "cliband #{version}", shell_output("#{bin}/cliband --version")
  end
end
