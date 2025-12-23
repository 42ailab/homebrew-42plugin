# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.11/42plugin-darwin-arm64.tar.gz"
      sha256 "3c8516e3e6414687ed2818d49632bf96cc0e6a6319ec583bb9954ed8ee2c5b5e"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.11/42plugin-darwin-x64.tar.gz"
      sha256 "1f3968a3632bd654bb834ccd5a6ae82d46fefb2387eb56c21a350d81483bf490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.11/42plugin-linux-arm64.tar.gz"
      sha256 "d30cdaf7b91ee2ac65039c4a749209c9713b3089f4f5b6c6e2cb550a2647cdce"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.11/42plugin-linux-x64.tar.gz"
      sha256 "c86ebcf316ab913512b96504b7cbc15337f9cfbaaadf09d567ddc7ee89cfd5b0"
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
