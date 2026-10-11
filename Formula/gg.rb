class Gg < Formula
  desc "Terminal workspace for GitLab, Jira, Slack, Git, and local work"
  homepage "https://github.com/dawiddutoit/gg-releases"
  version "0.1.0-alpha.3"

  on_macos do
    on_arm do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.3/gg-v0.1.0-alpha.3-aarch64-apple-darwin.tar.gz"
      sha256 "542fee53f92d641b77f64f13b43190f5c8ca6e6017455faa8fceb59e18097e82"
    end
    on_intel do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.3/gg-v0.1.0-alpha.3-x86_64-apple-darwin.tar.gz"
      sha256 "18e6afe59877c028c01d142c682991a8761208d2cd8fabbd1fa39f27de19c530"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.3/gg-v0.1.0-alpha.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c4fdd31571ea93abdaf7f2872ed027e0a95594277fe27d8c97b2e50b3be7993"
    end
    on_intel do
      url "https://github.com/dawiddutoit/gg-releases/releases/download/v0.1.0-alpha.3/gg-v0.1.0-alpha.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c758500007028cbe77015263dd5b140c16479693b19ddd0414f6a30997b9b0f"
    end
  end

  def install
    bin.install "gg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gg --version")
  end
end
