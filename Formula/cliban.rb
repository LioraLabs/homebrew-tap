# Generated from the v0.2.1 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.2.1/cliban-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "b4a802205266425001b311fa59a336ad9aa2962b9e906ca945ececee3600a7aa"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.2.1/cliban-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "057e50a1de95b1da846aee20b93e3e8156badeeab7a5239d2215bed864a31287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.2.1/cliban-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5d0305c2b72249a3e8d29bc3824ffac433d232cf76135ddd68c1b76b728c040"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.2.1/cliban-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95810d7197a97d0a69c71030804f159fcd3093210c448c4a389834b86338fd34"
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
