# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.28/42plugin-darwin-arm64.tar.gz"
      sha256 "f455df4eacb1cd568c19a3881cd2dcc302ad59a243d8702042559f322f6dc329"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.28/42plugin-darwin-x64.tar.gz"
      sha256 "be934f550d6baffda328bf2d7fc71ce5b1e55a5d4634b2fccdc34c6bb2a43000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.28/42plugin-linux-arm64.tar.gz"
      sha256 "9aa505a2b7bb2fdbdfbf7d463a1a7c7c90d72442615bc443945058ef73d63ba0"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.28/42plugin-linux-x64.tar.gz"
      sha256 "3d0235282c1e7dfc4dd63e8e0fc3479c005b3bcdc444ee445bf1791898575542"
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
