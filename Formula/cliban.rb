# Generated from the v0.6.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.6.0/cliban-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b31e0e055eab96e4cfec6e1086883d7a992b7f740e52c7e6c58542511495657"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.6.0/cliban-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f6bdc4fc36660bfe308f6a565a09ed4d869c27dd5a0f31393636db030d77897"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.6.0/cliban-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6033f7685ee0753a6d10b3622f99ff8d2283705c32a2fed0d824e10a7c211caf"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.6.0/cliban-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0ffba5b24cbbae2fab66f8911761a82bed25872129f6c447168071f707b2d7a"
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
