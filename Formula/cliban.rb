# Generated from the v0.10.0 SHA256SUMS. See README.md to refresh.
class Cliban < Formula
  desc "Self-hosted, agent-first kanban for the terminal"
  homepage "https://github.com/LioraLabs/cliban"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.10.0/cliban-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "7bc6990080a7e90ba68403a0a9ee9e7c4fd2840ef7d0a796f3bdcb585dba25f9"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.10.0/cliban-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee336d9a0fb826e5a75ce6d364fa5d1c63b644572485b520cec901f5a3360a2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.10.0/cliban-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ae73094c3520a6f1b81210065d0e4f6bec61b72f52b8d173cceafca5a59bfa14"
    end
    on_intel do
      url "https://github.com/LioraLabs/cliban/releases/download/v0.10.0/cliban-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13b442fc753d744eaef8df4e85d4e42c8967d179b0a6e2418a84548c14514b7c"
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
