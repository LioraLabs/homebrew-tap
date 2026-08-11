# Generated from the v0.8.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.8.0/cliban-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "ea9e851372d5ca27733688f6ab5d6c593e1d5b872e24538bcd97fcd7bde39083"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.8.0/cliban-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "1f5d5e41726ba212f96c7d8c9aa8119bf6dc77fba054e025a4b2ce15c8d21665"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.8.0/cliban-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09f34e51616e25999c3a3ce079c6ecc625fbef6b3a951fff1de7ae0396d6a256"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.8.0/cliban-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b28bd130abee36fb0546a136e299d8b96123095ad5d43229cee5385dc601a5c2"
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
