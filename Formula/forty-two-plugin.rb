# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.33/42plugin-darwin-arm64.tar.gz"
      sha256 "da5307ca5b69e79d6dc718b30fa409af62f3d23936ee9fb746bd008cdc211dba"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.33/42plugin-darwin-x64.tar.gz"
      sha256 "2de37ee84bd3bacef54d634b50a96abefabe9d048dba71661c923935aba69686"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.33/42plugin-linux-arm64.tar.gz"
      sha256 "5a7c4d3e725588739f8fcd9824f9a0af32a33409a20fdb930d34788c3dc834ac"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.33/42plugin-linux-x64.tar.gz"
      sha256 "a950ba7a15e841de7593ae03a2ba3c6c9107ee405f827c9ef6924197b697af1b"
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
