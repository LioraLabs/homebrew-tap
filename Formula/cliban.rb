# Generated from the v0.11.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.11.0/cliban-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "2e2581d8928043a4734f14f1a3bd39ee2e71559cd72e6b9414d329730371b345"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.11.0/cliban-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "44a65b61409c99fb05b3ef20cde9c2dfbea92a99250265a04639be455e2f196c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.11.0/cliban-v0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4543cc2cde42978a300d210e53cdf52ddbd5044b8a5bd2e542500e45f6d0d66"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.11.0/cliban-v0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "58e52687c30bb40beb73aac2b62b69d9476151547503e21604912d6ac8a3e397"
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
