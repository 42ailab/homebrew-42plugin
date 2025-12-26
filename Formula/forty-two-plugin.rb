# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.23/42plugin-darwin-arm64.tar.gz"
      sha256 "eae6f36fb364d59481dffb81ff4f386879d4ebf72937fa8baa7d0af2b714cc19"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.23/42plugin-darwin-x64.tar.gz"
      sha256 "a5ce1a20d4557aa34fed54a4d50ce664f87917f26a05c3d03f5c181e253e63a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.23/42plugin-linux-arm64.tar.gz"
      sha256 "70e6f10c979495022bcec5c1d16c5a0ed22524c0af0601ad4e8e21a18c965898"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.23/42plugin-linux-x64.tar.gz"
      sha256 "4d64e284addb8dc298a315d1badb3f9a4e06eb4e0c03c4694fe71f2fbf3453a2"
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
