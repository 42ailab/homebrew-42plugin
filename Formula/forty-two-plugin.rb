class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.37"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.37/42plugin-darwin-arm64.tar.gz"
      sha256 "58a99de39fa98a178267c41e874c3e9295d1ccf228f70f952b761155f89e59e0"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.37/42plugin-darwin-x64.tar.gz"
      sha256 "c8ab5c13b1a27f2d557dc2c0f46177b157304a823a3cb59f0c18322bb00f7c79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.37/42plugin-linux-arm64.tar.gz"
      sha256 "4da30e498af1688445c34e2d53367069b97e8fc9078729573c0000b74dfdf855"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.37/42plugin-linux-x64.tar.gz"
      sha256 "00b15fe8244ab4d07f3b1eb9b080bc532ca56ead0e7c4922c3dcd3663f1c633f"
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
