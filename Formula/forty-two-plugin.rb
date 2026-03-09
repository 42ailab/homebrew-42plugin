class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.5"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.5/42plugin-darwin-arm64.tar.gz"
      sha256 "21440bcddda762122a6d50764e99d5adaa1727c04254046f13765eee3ff04264"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.5/42plugin-darwin-x64.tar.gz"
      sha256 "f2de56c8713408abc7a6d9c03c71dd5d0939a80f62aca3bf4f64b9cb4d5e935f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.5/42plugin-linux-arm64.tar.gz"
      sha256 "94776cc24f132b6ba5160927cd8592d3ae865c6d42bf7805b2a3bdac24389886"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.5/42plugin-linux-x64.tar.gz"
      sha256 "5991dd659ed0cdcf7d13a5e5bb437b3ccb51ab558a49bb9416eeda6f442371d6"
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
