# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.18/42plugin-darwin-arm64.tar.gz"
      sha256 "b47512ad2742e6382757a74f0ef69a154ad1f24c9b81ce20005e3d975ba95f01"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.18/42plugin-darwin-x64.tar.gz"
      sha256 "5d11cec3998ed33fc9ab89d3ad9c956a7181d1826a526ac808be8d42a6c8d416"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.18/42plugin-linux-arm64.tar.gz"
      sha256 "c7957ac6406544b297575dbf52bb5a91947d60a2bd541b43e4c188e428046afd"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.18/42plugin-linux-x64.tar.gz"
      sha256 "aa2ca91a409c94a36500013ba7146bbcfe5908083a32f7a1ce96d995a6a5d7f9"
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
