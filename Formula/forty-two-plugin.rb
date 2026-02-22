class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.1"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.1/42plugin-darwin-arm64.tar.gz"
      sha256 "6844104fda69d03fb06533dd49996b7da8a24f2854b304b6e3d34c844fbbbb72"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.1/42plugin-darwin-x64.tar.gz"
      sha256 "baa7008544128e1f419947af6651bdadd0de66adb84cf93bf6a257fbaa96b418"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.1/42plugin-linux-arm64.tar.gz"
      sha256 "9a62e57aa09e0cacf924069677cd046fd7ab98ec61fec4fc13304f55149da456"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.1/42plugin-linux-x64.tar.gz"
      sha256 "50a1e1e2f749d5a04a6d083d5f8a1346f25d71345f4aef69ec68d228781e81e7"
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
