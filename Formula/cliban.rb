# Generated from the v0.12.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.12.0/cliban-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "a884087424173ea2fa4d8bf55f7c4d955504163910109b392717ae8fd86f8075"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.12.0/cliban-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "53405aadb74e9997c26239a1300847d844aa897992f196b34afcd51b71fec810"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.12.0/cliban-v0.12.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db350b6a0d866c5a4fd1e5bf64d79c515b0a741bce6c94b0df923bcd214637c4"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.12.0/cliban-v0.12.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df4aee6f344c0097ed9bb2f0c5f5ba06afbc8981c44f516a1d8db2f3cdeb7037"
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
