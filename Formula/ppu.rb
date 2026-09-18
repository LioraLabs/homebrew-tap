# Generated from the v0.1.0 SHA256SUMS by scripts/gen-formula.py in LioraLabs/ppu.toys.
class Ppu < Formula
  desc "Author SNES PPU toys for ppu.toys offline: new, check, render, pack, docs"
  homepage "https://ppu.toys"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/ppu.toys/releases/download/v0.1.0/ppu-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5c8006a56bf5bada6cd50e6f0eaac340f7973148a0a7ed5e5db05e3c2345dae8"
    end
    on_intel do
      url "https://github.com/LioraLabs/ppu.toys/releases/download/v0.1.0/ppu-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ed7e6259e4fea870e827544ac417b669a415a9cd441233c2fa3edfd4dce8ba3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/ppu.toys/releases/download/v0.1.0/ppu-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c36c8b567db15a3ddfc9e34194c8490416b47cb872f46a11b33f0513a7e5b3e"
    end
    on_intel do
      url "https://github.com/LioraLabs/ppu.toys/releases/download/v0.1.0/ppu-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d13cbb8cce09e1ffe8f7fb8ab7f327fe56f0ab493554bcabddf083dc8b46478"
    end
  end

  def install
    bin.install "ppu"
  end

  test do
    assert_match "ppu #{version}", shell_output("#{bin}/ppu --version")
  end
end
