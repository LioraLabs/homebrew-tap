# Generated from the v0.4.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.4.0/cliban-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb1b052ca05f3647a360611a9dea25d834343bd7234d0804b3ccdd5a1b479ed9"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.4.0/cliban-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bd0fa4b7b96d74a83f1332527dbeb6b09d44474ac68a80c718cb4666068854d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.4.0/cliban-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42e9a32c5d83bbf9228c5e24b80883c55d5ad472ae03d3ce35fa5f02d4724ce9"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.4.0/cliban-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b4eccc599da647ed555a9352ae393b05250a0cf9ab1044b0ef14c70c7fb06cf7"
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
