# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.19/42plugin-darwin-arm64.tar.gz"
      sha256 "34e249f1fcd7a4d01876d46387a49e307d799afc81444ec5b55b69048ec90b43"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.19/42plugin-darwin-x64.tar.gz"
      sha256 "b2a8be5b565d7ea03a97a675385bf3c6f156ce424e1a97ecbb05f040532036a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.19/42plugin-linux-arm64.tar.gz"
      sha256 "a97d30c31a05d9f8889f309c3376f7a5fd6a0356ce300ce193e9d53c14235199"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.19/42plugin-linux-x64.tar.gz"
      sha256 "62c49b8ae7292fe08c829bedc015541da8df61035cdfa17a8dbd5b29c59773c5"
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
