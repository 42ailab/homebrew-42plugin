# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.26/42plugin-darwin-arm64.tar.gz"
      sha256 "97008d56e7db56ece4a5f826bc6b56575be533e8e8b78b54c01428030b336819"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.26/42plugin-darwin-x64.tar.gz"
      sha256 "00f3d06c9073559cc6d32173ec19cf60f4ce08e3fbeb952203a179b35963e085"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.26/42plugin-linux-arm64.tar.gz"
      sha256 "fa7d9d57128c44f2bfe929a9a427e3522a5b32ce5263be8b9ef02e5e64ac27b8"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.26/42plugin-linux-x64.tar.gz"
      sha256 "c056663bdf5901c71905bfe88a3e394dcbcd07ea1bf5fcc8a6e643b59242f936"
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
