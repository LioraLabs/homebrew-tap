# Generated from the v0.7.1 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.7.1/cliban-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "f3ac26d4d3e12f207ea067f8ceabf19a4bbd17477bff0463d384e942f919fdca"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.7.1/cliban-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "98a56a05759ec0bcf22888c09eaaf9fbbc3505f5dd66356e026d3461f7362e9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.7.1/cliban-v0.7.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5ceb2db5bf0de2a5ba0e8159e21a8f9054b95f6f9140ebca21c7832519c5afe"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.7.1/cliban-v0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "056f597dd6145b793e4a7131d85e5ebc3f63ca14f55e3a474e70d6d46377471c"
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
