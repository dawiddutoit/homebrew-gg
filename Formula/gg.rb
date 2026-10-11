class Gg < Formula
  desc "Terminal workspace for GitLab, Jira, Slack, Git, and local work"
  homepage "https://github.com/dawiddutoit/gg-releases"
  version "0.1.0-alpha.2"

  on_macos do
    on_arm do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.2/gg-v0.1.0-alpha.2-aarch64-apple-darwin.tar.gz"
      sha256 "9f1e71089acd4b078a58147957132ecf45faf80fe19025f795d4de216db8ea28"
    end
    on_intel do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.2/gg-v0.1.0-alpha.2-x86_64-apple-darwin.tar.gz"
      sha256 "cb53660685e5b6daa563210e572c3661e805aaca792d992a7d7eff3668488465"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.2/gg-v0.1.0-alpha.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3fb46e190ea434d061461ba1d94d840f98092e9321a9c4acb23a825183c256a8"
    end
    on_intel do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.2/gg-v0.1.0-alpha.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0c5938fcd74e6b5528c8796b84842932d7a2e1a64806d58a02ad113531f3c5f"
    end
  end

  def install
    bin.install "gg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gg --version")
  end
end
