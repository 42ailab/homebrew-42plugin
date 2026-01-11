class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.9"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.9/42plugin-darwin-arm64.tar.gz"
      sha256 "d35a7475cff75b0948edf89d676752ccba37a8587d9c32c9c3d739808d6b3ac2"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.9/42plugin-darwin-x64.tar.gz"
      sha256 "168d6465d04a382c5f731e5fadec6681dd21b0f56215613629954fba9fb2c707"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.9/42plugin-linux-arm64.tar.gz"
      sha256 "5c5435c610a2a4b7a2071191bfabac5395fd139d291df9e793096260a9bcea26"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.9/42plugin-linux-x64.tar.gz"
      sha256 "884f14f4f79aa1193bba548a216132a131b04f860f2d76d654fdae2eca7c43d0"
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
