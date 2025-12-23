# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.14/42plugin-darwin-arm64.tar.gz"
      sha256 "dac0adce8150659db998de9ab58d5a092c55b1981d4d372a02d2e558bc185aae"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.14/42plugin-darwin-x64.tar.gz"
      sha256 "6c6ac87b4caa72cf0974d299b3d8470a17dc57c735de960e304c81fd41e4f7a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.14/42plugin-linux-arm64.tar.gz"
      sha256 "e3dad41881c67c0cbc62a1b639593c25ff32ae21eb384036cb86b33b1394b9f3"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.14/42plugin-linux-x64.tar.gz"
      sha256 "6b69243c0bb88d411f0ed5880d31461b8cf16b1d88e12427f72f85ea47ab0bcb"
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
