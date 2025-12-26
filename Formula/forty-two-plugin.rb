# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.24/42plugin-darwin-arm64.tar.gz"
      sha256 "b70c7ce2be84ebf969f6a9947949debf71b9c3a384f85433f5715f3f6f0ce7bf"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.24/42plugin-darwin-x64.tar.gz"
      sha256 "a535b9e53b8ae414a84181ce6416981f715ebceab85cdf295097a183862a3278"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.24/42plugin-linux-arm64.tar.gz"
      sha256 "49a5d0330bf5a74f88846ed8b367e8c2c4689bc4ddfbc14c8fd3718669a73241"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.24/42plugin-linux-x64.tar.gz"
      sha256 "3fda077acb9b4dba04ba2ac1c0aada29ad118871fde9433c17a3043f594aaa81"
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
