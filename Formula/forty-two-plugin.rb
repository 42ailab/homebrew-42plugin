# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.25/42plugin-darwin-arm64.tar.gz"
      sha256 "2e6c49d98559f812d5fbf52702ef1224e5788e6189cbd12884880a8c6e511a4c"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.25/42plugin-darwin-x64.tar.gz"
      sha256 "448601d97f8a191d8d81a1ff416577d391c68750d59aac0ddb2322a46e27ac0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.25/42plugin-linux-arm64.tar.gz"
      sha256 "8f34f8e70db545610c7ae0854207ad78007449b010b8f07409383b429da20efb"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.25/42plugin-linux-x64.tar.gz"
      sha256 "cc0679186a741285fe8f6cec6771647f0c248845befb6e78a50cf32463186a8b"
    end
  end

  def install
    # 二进制文件名包含平台后缀，需要重命名为 42plugin
    binary = Dir["42plugin-*"].first
    bin.install binary => "42plugin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/42plugin --version")
  end
end
