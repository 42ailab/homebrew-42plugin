# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.8/42plugin-darwin-arm64.tar.gz"
      sha256 "8ed30579760850ad31776d02796a69b262364474900af8b152464edeac35f8c7"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.8/42plugin-darwin-x64.tar.gz"
      sha256 "62022ff55ec6dcaf9c4e1d676c2f25fbeade625109a2e621cfa3267f820aee26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.8/42plugin-linux-arm64.tar.gz"
      sha256 "31e36c88c04aeee46a8584c74a9b0812cc26bf02b8d0655ef660ec865f9f72d7"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.8/42plugin-linux-x64.tar.gz"
      sha256 "b366b7551b8a6a98faa5bb75ba096ea6b42ef338a4f7d0cd85e2f92554fd4fb6"
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
