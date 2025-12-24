# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.17/42plugin-darwin-arm64.tar.gz"
      sha256 "683e3aab206fbcd7b4682c4217e236a932ccc1bfe4aecb0bdebcf369021a1c34"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.17/42plugin-darwin-x64.tar.gz"
      sha256 "327441681bc9fee7c0f4bbac327d55bedb9afb6f2f7650f05bdd89fc631bcbe9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.17/42plugin-linux-arm64.tar.gz"
      sha256 "2491498f4ff6afd62b226899bec03e10d9fc374a452a7baad95a72940f86e8ff"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.17/42plugin-linux-x64.tar.gz"
      sha256 "a5293fb77ece0d24a44d632646cd698a656cff979d3bf2b019a979422ff754aa"
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
