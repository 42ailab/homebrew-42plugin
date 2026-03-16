class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.2"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.2/42plugin-darwin-arm64.tar.gz"
      sha256 "b62e97aca340b254cf1b519306259078e92ecf4e357027c55cd8b48dfce746ca"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.2/42plugin-darwin-x64.tar.gz"
      sha256 "29dfbbc308177e34fb831f9658a09afeb85d41fb55a060fe8809ffbc5ae760fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.2/42plugin-linux-arm64.tar.gz"
      sha256 "18de5990ba3474789d461adef0b5b3ad69bee3da857147fedc8a6e40059b1df3"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.2/42plugin-linux-x64.tar.gz"
      sha256 "602d1ddcea4ff9a4a8a8b4d5a78c739ed9627aaa752113a45d81c1c9f79ca7c3"
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
