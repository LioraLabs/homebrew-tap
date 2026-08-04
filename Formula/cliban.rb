# Generated from the v0.5.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.5.0/cliban-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "b9dfa0917cbaab4a4ea015c8e7e8998f7a4d3cf271dd3417a79c60425b5cba81"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.5.0/cliban-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "368f73e930689fd166b414d87c2447e6dafd65f5490b7db83fccd48d30726d3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.5.0/cliban-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97a348b6efb35e45362dc7927ba362c71e153d242d18abdd570e2290a79f3c39"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.5.0/cliban-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31d4aace1e446087130cdef03643213b9fa2c9f577f4884885eef60f7822e171"
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
