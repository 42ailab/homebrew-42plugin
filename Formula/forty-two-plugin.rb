class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.35"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.35/42plugin-darwin-arm64.tar.gz"
      sha256 "ebf78b6051b574be4163f61f77b3878447394d5adc279c34ecfb3070e8fa31e8"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.35/42plugin-darwin-x64.tar.gz"
      sha256 "a9325f89b44b97a0e23427a97365628f531e36221e98c3d2f370be370eccf5d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.35/42plugin-linux-arm64.tar.gz"
      sha256 "ff22810c78196cf2e218b9d373b961b9b7a174acb2df628bc4ea1506e1358639"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.35/42plugin-linux-x64.tar.gz"
      sha256 "e828170c736dafa290a6c3378d127ca4be0443d95008ac3c9b5a8bf6750a3f44"
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
