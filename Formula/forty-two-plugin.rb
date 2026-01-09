class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.3"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.3/42plugin-darwin-arm64.tar.gz"
      sha256 "ca542d75cab3812caf8f612299ab4c9403a67a4f35fd5dbc27ff5ec8d27adc1f"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.3/42plugin-darwin-x64.tar.gz"
      sha256 "d28c9599b1a77b5c64520846c9d8852c371efa2cfd27a18303a86cc4e244369f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.3/42plugin-linux-arm64.tar.gz"
      sha256 "f6770de52ce8b8d1a2ea1fa9298bb8707ef62b4c7d503ca94e5417ea11181cb6"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.3/42plugin-linux-x64.tar.gz"
      sha256 "c82d9f0198df57c31db9861968b761771a60ca4e89212be36976cd710f413374"
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
