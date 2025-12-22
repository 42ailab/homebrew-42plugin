# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.6/42plugin-darwin-arm64.tar.gz"
      sha256 "b036782a23b1d288556f54da487385dd176efd7494d4cc75978cea8d2a9a3606"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.6/42plugin-darwin-x64.tar.gz"
      sha256 "62f5db6ae73417302e4e7e4d89f057ac7ef65661724efafc5ef335a4294f3fc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.6/42plugin-linux-arm64.tar.gz"
      sha256 "c77bbde12d94e61a0b895848f8fe9373733756272b8887067332d32e0faccef2"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.6/42plugin-linux-x64.tar.gz"
      sha256 "7f76e6eae1dc1e1ab709100b264fafc393e77595a8b440fd0221aa96269ad98c"
    end
  end

  def install
    bin.install "42plugin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/42plugin --version")
  end
end
