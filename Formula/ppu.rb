# Generated from the v0.2.0 SHA256SUMS by scripts/gen-formula.py in LioraLabs/ppu.toys.
class Ppu < Formula
  desc "Author SNES PPU toys for ppu.toys offline: new, check, render, pack, docs"
  homepage "https://ppu.toys"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/ppu.toys/releases/download/v0.2.0/ppu-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4378a70b1cbd89a140929f334c85c1cdc698eecb86568d7571ed27bf388d87d8"
    end
    on_intel do
      url "https://github.com/LioraLabs/ppu.toys/releases/download/v0.2.0/ppu-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd72de8d55dd000ebad2df60889a64433b90ca27dd73330f159bf56a30bcc2f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/ppu.toys/releases/download/v0.2.0/ppu-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a4c3438ad7543c392d7f76f6e3b3eca1b08568e4e095b9bbc560211c9448b5ae"
    end
    on_intel do
      url "https://github.com/LioraLabs/ppu.toys/releases/download/v0.2.0/ppu-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8d21420b0f29960b964eb5493b79a4af21b953f266a5f032328f69dc89ec6e7"
    end
  end

  def install
    bin.install "ppu"
  end

  test do
    assert_match "ppu #{version}", shell_output("#{bin}/ppu --version")
  end
end
