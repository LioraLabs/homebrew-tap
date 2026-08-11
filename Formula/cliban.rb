# Generated from the v0.9.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.9.0/cliban-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "e04a9037970ec010840451919e1d5b6382f5c973f9558617137f8d9fcd540a85"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.9.0/cliban-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "efda57d4d90031c62df5eb590f9a8af920d274a4a31596c750dafab2d9f03c91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.9.0/cliban-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2adb51b55530293c28d926cbefb93372c7433ae259c312bbc9b7e15c61d4c2e0"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.9.0/cliban-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e3b56dc347fdda5d6dba0a623c5158ed536fc54dd0d84202ba75a254a4fd9ab"
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
