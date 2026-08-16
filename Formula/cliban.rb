# Generated from the v0.14.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.14.0/cliban-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "f7d580c5b1ada855f8499ed55074480ac64f95c0be04569471dc24657ac629ae"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.14.0/cliban-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "a51ec9bcd5d0699dea5e8bb065240a088fc6a326170d35d299eb53f91dc1a642"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.14.0/cliban-v0.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60170fbf98cf8cc457ae420387e5b4c57aac348539c5e0f36d18429f29c2de0e"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.14.0/cliban-v0.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "984684ac5aa17f3ba6f6431f255ea52b583f4e5f3c24cb57294c56b6885ee220"
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
