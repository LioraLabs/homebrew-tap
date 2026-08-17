# Generated from the v0.15.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.15.0/cliban-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "f34da8edb74c1473f99d40d4ccb3306ebe37a12c64b2d3d98fbe861b1ffb3e9d"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.15.0/cliban-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "60b67bb86bee466d3053b0034d7f18a742f1e701e0c83ce4e75e6d799cf59fe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.15.0/cliban-v0.15.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ba0ae3dafc960b1c96938282eb2bed0cb44f0a0a6e0a9b73300211eb4c376fe"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.15.0/cliban-v0.15.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e344786e4b21c8415e2811603517d3893cfe92a961faf38cb4c6a2fb6194972d"
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
