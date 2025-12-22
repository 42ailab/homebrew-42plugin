# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.10/42plugin-darwin-arm64.tar.gz"
      sha256 "5171a4bba73f3ef2f2c19c5a0e85e0c1c6f6e3b2e69552f5b84b3c166ecca26e"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.10/42plugin-darwin-x64.tar.gz"
      sha256 "0dd58f44333137c65fdadd26730d29c5465673a96a02d3544e33e1806fbee036"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.10/42plugin-linux-arm64.tar.gz"
      sha256 "7b25088bc3f7b3d4b591725b401d2c778b523e17ea10ff6f419c78ed3c5871bd"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.10/42plugin-linux-x64.tar.gz"
      sha256 "cb9223be8d5f7e3718eb238458c664f0d4bc9085364fbcce8c99d86b59c68b15"
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
