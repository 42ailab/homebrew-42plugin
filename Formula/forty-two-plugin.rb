# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.30/42plugin-darwin-arm64.tar.gz"
      sha256 "e26627db9ba04fb5d861a23c97cb34c919cd6e15534dac6d2aa2254d10a8234e"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.30/42plugin-darwin-x64.tar.gz"
      sha256 "ec6384830243b50cacb20886c80b7b1781877939bc73ce48ea773aade87cd515"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.30/42plugin-linux-arm64.tar.gz"
      sha256 "217eefe54ed0c867ca12c8bcb8cf6589e549a3dec44257c14ae426148484b61b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.30/42plugin-linux-x64.tar.gz"
      sha256 "ed83205076c602562b74defdd2a38ac885c1e5ce7e90fe1ace5a9b174f92e175"
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
