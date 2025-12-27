# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.27/42plugin-darwin-arm64.tar.gz"
      sha256 "87c05efc3abfaa11d7a9213dc8c1119cac41abb405ce6518077dc93b9c001c66"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.27/42plugin-darwin-x64.tar.gz"
      sha256 "2516bbad3b7a75966eac03e1dc01c0c847bc682a7d8f91ef4b1ab32ba3971b10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.27/42plugin-linux-arm64.tar.gz"
      sha256 "77a07f56d177b94f4430e98464825288567b59757bee9f267b59df4777831aec"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.27/42plugin-linux-x64.tar.gz"
      sha256 "5a984cee69d45600173a39c20228c88b495f6d102c4cf8b1d15b2d8883a259c5"
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
