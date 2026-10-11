class Gg < Formula
  desc "Terminal workspace for GitLab, Jira, Slack, Git, and local work"
  homepage "https://github.com/dawiddutoit/gg-releases"
  version "0.1.0-alpha.4"

  on_macos do
    on_arm do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.4/gg-v0.1.0-alpha.4-aarch64-apple-darwin.tar.gz"
      sha256 "40902577745597706cc84b02cefccb0d3fb2f2909cb1d7e8e986dfd0f6ca6739"
    end
    on_intel do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.4/gg-v0.1.0-alpha.4-x86_64-apple-darwin.tar.gz"
      sha256 "383e1a587263e5cdb37777256c54c2af77da08e0970269a72aef4588209324e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.4/gg-v0.1.0-alpha.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5990e8476ceb9f3bc88b06eafcf375ee514f4475f89181d78167001481183c59"
    end
    on_intel do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.4/gg-v0.1.0-alpha.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49fa04f4f04b70c86b182a15549aa4bd4188c117ffe6e4dd62bc09752f128d99"
    end
  end

  def install
    bin.install "gg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gg --version")
  end
end
