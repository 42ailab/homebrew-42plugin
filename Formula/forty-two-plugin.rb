class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.1"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.1/42plugin-darwin-arm64.tar.gz"
      sha256 "1ca3fdfdb197e016aac8e9330a8fc931904a160ef4e459c8f5af416f8fa1d26e"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.1/42plugin-darwin-x64.tar.gz"
      sha256 "b0ea092985cfd8fe6500a89ea9a4627ba9faca9c6e9ad39b8bd8854865c85170"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.1/42plugin-linux-arm64.tar.gz"
      sha256 "33d609f9e0a3301d597fbf11026cdfa78afa8606e0f8270279f89ec1244a14ec"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.1/42plugin-linux-x64.tar.gz"
      sha256 "d013c467fe848276b6aff5376c44597c39b3eab330c580dd14563ad4ac84dbec"
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
