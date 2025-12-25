# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.20/42plugin-darwin-arm64.tar.gz"
      sha256 "0a301407714fdd4d91b45b883ce4ad05f122fce7643244b4489a9db0f8928ee0"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.20/42plugin-darwin-x64.tar.gz"
      sha256 "0a8579f909a6c638f6be9e787b46734ca5d3058d147e18b97156b4ec450398cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.20/42plugin-linux-arm64.tar.gz"
      sha256 "77c4a0e4475708816fcd06e19b8c66e33dc5c8c9a87ea5dbd5faa43986662ce7"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.20/42plugin-linux-x64.tar.gz"
      sha256 "dead8dcfcd4f028b7dff54861a4cd01e71c45b7c288d5bd17b6199cfdde8d83d"
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
