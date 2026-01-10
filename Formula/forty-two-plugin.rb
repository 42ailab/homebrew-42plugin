class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.5"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.5/42plugin-darwin-arm64.tar.gz"
      sha256 "bb9ef3287aecd0ca0ee4cfd0302bf068644b06f0ba86f1456c804aa14c70c3b4"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.5/42plugin-darwin-x64.tar.gz"
      sha256 "e88dc294a5f122267c1e854744f60b86445d58b45c8ebde7ce269c21c69c8e90"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.5/42plugin-linux-arm64.tar.gz"
      sha256 "375018a9da6fd83b8c053d92105b180c8f22e84fcba76502498d1e1a6c4900d4"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.5/42plugin-linux-x64.tar.gz"
      sha256 "25f7b58bbd3e4259396f35fb4c6801ae2c24022a2f1413d9da6a11cf58347e64"
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
