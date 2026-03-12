class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.9"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.9/42plugin-darwin-arm64.tar.gz"
      sha256 "766c3e2a3382ebfe148bcd5a36cfedfacc1c63c9067091c268c9c3ad82364c3b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.9/42plugin-darwin-x64.tar.gz"
      sha256 "d534d1ab3dc6c2bc4e50d01facde468eeb14ec7c142a02590952a4b8f33724f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.9/42plugin-linux-arm64.tar.gz"
      sha256 "12789b4c734a99ded5711b10ff5b752c60e0a7bd669eb52dfb4c7da02dc1002c"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.9/42plugin-linux-x64.tar.gz"
      sha256 "c4fcd2263504a50de97892fe712c95e279ea918e37f15cfcb960d999f3047599"
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
