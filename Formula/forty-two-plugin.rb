# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.22/42plugin-darwin-arm64.tar.gz"
      sha256 "45bb1d701a632e40fb9de2b1cfd8254448403efeb477e517772d5b7e66bdcfde"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.22/42plugin-darwin-x64.tar.gz"
      sha256 "61d2ac0a28bc46cad589bf2200643b332da9a1ace9e818cc232c41eacf2b2364"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.22/42plugin-linux-arm64.tar.gz"
      sha256 "907f43e84d64d49e49892acb719c62a0357dec282d5036390e058de9b3be5617"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.22/42plugin-linux-x64.tar.gz"
      sha256 "d7d524c00e454896fa13f70851a9a177f32db9cc37ee4188b43106d0b56eae5e"
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
