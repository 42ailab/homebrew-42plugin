class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.36"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.36/42plugin-darwin-arm64.tar.gz"
      sha256 "a60ea40b832cf38e84a9694138022c714b8b2c1f6fb8f2c5110cf81287d1c1da"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.36/42plugin-darwin-x64.tar.gz"
      sha256 "64f373715f12720e4b6554ef75de0e42db691c70b76144e4e3e5e252e12567e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.36/42plugin-linux-arm64.tar.gz"
      sha256 "6f9a318e07427aacb40aa8e566ef529b2d9d7f15115e7eacd0ca8eba3f14091b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.36/42plugin-linux-x64.tar.gz"
      sha256 "e5e23ba06a4f3ceaa59b6dd40cce5af94ea771fa9b442e777a069df6280d3a2b"
    end
  end
  def install
    binary = Dir["42plugin-*"].first
    bin.install binary => "42plugin"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/42plugin --version")
  end
end
