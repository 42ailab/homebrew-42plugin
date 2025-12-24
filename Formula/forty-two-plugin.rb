# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.16/42plugin-darwin-arm64.tar.gz"
      sha256 "f5d0e30feeef2378ed7199a99946add437a8715955931be4998f0290e26eacf7"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.16/42plugin-darwin-x64.tar.gz"
      sha256 "2f25768a6f190da28955074045c5bb019f7dd840c471fffb9c07fbe34a889a03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.16/42plugin-linux-arm64.tar.gz"
      sha256 "a2b7ca702c9a1a2a3d3c254a8ec395652ef6214d38c41f842db69d52204ebbc4"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.16/42plugin-linux-x64.tar.gz"
      sha256 "33571a709c6124c919d19ceca5e51310dd492da48c487c5c939c4072bfe64623"
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
