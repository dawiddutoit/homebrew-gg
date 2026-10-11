class Gg < Formula
  desc "Terminal workspace for GitLab, Jira, Slack, Git, and local work"
  homepage "https://github.com/dawiddutoit/gg-releases"
  version "0.1.0-alpha.1"

  on_macos do
    on_arm do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.1/gg-v0.1.0-alpha.1-aarch64-apple-darwin.tar.gz"
      sha256 "533d6c822563004b1e17564b3b123d837e2db2a74308a1575d2743fa3b92ad5f"
    end
    on_intel do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.1/gg-v0.1.0-alpha.1-x86_64-apple-darwin.tar.gz"
      sha256 "8cd9fb4471167519caa13b83c73c0b2126600406e6553eee78d38a9b2326781c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.1/gg-v0.1.0-alpha.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d869d4d4e5eed4694a102ae58b778cbdc9e70a12e849684b287a3eccf8b5e7d4"
    end
    on_intel do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.1/gg-v0.1.0-alpha.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b38b0b40475e123552c029122d8644f6fcf054cadc31892589a8fcc886368dee"
    end
  end

  def install
    bin.install "gg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gg --version")
  end
end
