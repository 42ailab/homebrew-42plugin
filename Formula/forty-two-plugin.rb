class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.7"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.7/42plugin-darwin-arm64.tar.gz"
      sha256 "dc7a2b85eac8c99e3e86e6ac3eca63126aefb0cbd1568f956f723fbab4397330"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.7/42plugin-darwin-x64.tar.gz"
      sha256 "442aadee23d3726dc873fb17d7fd1c8a5f4024c785d139a3e6d593b27b1ce17d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.7/42plugin-linux-arm64.tar.gz"
      sha256 "88216a74b031c846f83d222637219208b7d5d6d3d23cbd4fbd01d043c72a38ea"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.7/42plugin-linux-x64.tar.gz"
      sha256 "4879f7727e78742ad3dfa2b4cf2684441cb6da0fa67749081fe83e864eeac3b2"
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
