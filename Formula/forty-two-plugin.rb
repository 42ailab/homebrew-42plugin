# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.9/42plugin-darwin-arm64.tar.gz"
      sha256 "9cabd3a6581ebd7e92031cb7cfb356d7179360f0a9f9486bd1d8ea5de20b25ba"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.9/42plugin-darwin-x64.tar.gz"
      sha256 "a82be42179db53c8119f0551eb78c39d4453cfcd5f257c6c7643d80f66a1abb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.9/42plugin-linux-arm64.tar.gz"
      sha256 "838bd174dd90cb3c91817cc4e5ac038a801359530730e8c12d5a2b4803dc022d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.9/42plugin-linux-x64.tar.gz"
      sha256 "9d4e659d25fef9f2d615a8b1cd9c7bfa1d0178481c1599ff713c8cdbfc78aee8"
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
