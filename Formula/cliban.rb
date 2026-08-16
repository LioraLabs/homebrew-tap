# Generated from the v0.13.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.13.0/cliban-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "2fd1c4605dc5f01b2fe61c8853c1798527740428fb371ef1a3a117fac62661d8"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.13.0/cliban-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e093788f6988c0c7907f3ed710754b2ab73c42d6532782bfec9d4c911037234"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.13.0/cliban-v0.13.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9cae7f6bf775ebdc1eba5064fd9bc60b922e2d8a61a70c484af282a71ef16ad4"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.13.0/cliban-v0.13.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d445643d5313f6561dbdc373a1144b637105a3239c3ebde8f904909cb0c58973"
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
