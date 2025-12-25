# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.21/42plugin-darwin-arm64.tar.gz"
      sha256 "fed906143060e98e38ddafb6e964313174ca202c9adcd6acae2efd4c10fce6f6"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.21/42plugin-darwin-x64.tar.gz"
      sha256 "6d56e0b374ff5c52be606671f1a779a1feeb260b8637f5e2a2efa2baf4a5e1d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.21/42plugin-linux-arm64.tar.gz"
      sha256 "4dc23b6d12789a1a19bf1afc738451c270b00275e546e257b75e11b8917ef08d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.21/42plugin-linux-x64.tar.gz"
      sha256 "9cd0696e04b2f7dcea68a11f5cf9a078aac95d6d3ce6739a50a4ac129a46ef2d"
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
