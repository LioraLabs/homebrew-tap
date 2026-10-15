# Generated from the v0.16.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.16.0/cliban-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d71530ad0c16d2bb0f64bfd66e3c001374d051a859b2a53a742d2d052354c45"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.16.0/cliban-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "82610284544ffe3a145bfbc6a9b30d827210463a2297932ce8798dd95be859c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.16.0/cliban-v0.16.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4cc3470ee76b2b94b1559a827a2095b54de5f88d9290f2ce0f5f10359e4017a"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.16.0/cliban-v0.16.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "754aea0217d3539f7a4c422a32502c94509d102734413e99c0a8099c02b79fa9"
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
