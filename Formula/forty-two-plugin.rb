# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.29/42plugin-darwin-arm64.tar.gz"
      sha256 "8e84ed7db81849f1693fc12c5249e00d1badfe18c26f1bd86f767a0a8f4ae0f7"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.29/42plugin-darwin-x64.tar.gz"
      sha256 "aaeae67837576bb08aa91d4d3fcdfbc2a07200402bdc568d2ecb0864a4b9566c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.29/42plugin-linux-arm64.tar.gz"
      sha256 "5ce1192969a0a7edc8e880603a53b0896adee9c86fc1a10cbb27324f126883e9"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.29/42plugin-linux-x64.tar.gz"
      sha256 "f4f476b461c76db455eea09aa87ec27446e9582602c3d2f0b1ff48796c7edfe1"
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
