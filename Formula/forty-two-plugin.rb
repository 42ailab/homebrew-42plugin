# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.13/42plugin-darwin-arm64.tar.gz"
      sha256 "93cdc8a86b06bceef8349e606a3a36b3771e64d14f6537c3b0bb044225e097cf"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.13/42plugin-darwin-x64.tar.gz"
      sha256 "c27bfbd1aca88bdbfb84bb7760fabaadfddb29accdbe0e056008224fd68a4ee3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.13/42plugin-linux-arm64.tar.gz"
      sha256 "b073ab65d49053c72c813cbcfff3ebb1ab59bf37a9e425d297b1f91cc8ebf859"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.13/42plugin-linux-x64.tar.gz"
      sha256 "a00a8fd982ab3d3680de9e6a231cb5225c1479e45943d88fbaf911eddfa3b7c9"
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
