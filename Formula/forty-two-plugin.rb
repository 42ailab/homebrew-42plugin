# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.32/42plugin-darwin-arm64.tar.gz"
      sha256 "e1bc43b5bbe45a039934d840fe606335c7fcc12a884dcc2d1c3ff26edc03a679"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.32/42plugin-darwin-x64.tar.gz"
      sha256 "4289ecf0bf90f4dc40629e63072ff62f6c1584ce34199dd7c6c6e25254fff167"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.32/42plugin-linux-arm64.tar.gz"
      sha256 "ae88d41a39084734c2c297c17992a6683a9af5ae0e0fee7a9e7f3a2db1f5ffb2"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.32/42plugin-linux-x64.tar.gz"
      sha256 "2f28cfd057dcc1a844a6a4fe81988d40ed188a041b9f53fa0b19a4be914e9af2"
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
