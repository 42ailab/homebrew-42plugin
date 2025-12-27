# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.31/42plugin-darwin-arm64.tar.gz"
      sha256 "80ebc1624a64c440776e101598c42ebf4f76b0ba235e9a0540e6df895e64ac7c"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.31/42plugin-darwin-x64.tar.gz"
      sha256 "46830886ff21d2fdc681754ff4268be96a0cb5d64fd806cf91b8bd5f23901eeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.31/42plugin-linux-arm64.tar.gz"
      sha256 "56e865b7a6784973a30a49907450808761872435c9643285e2091c00bdb21709"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.31/42plugin-linux-x64.tar.gz"
      sha256 "aac207f227f26e59c169fc4bc6b4b8c3c27a51031136861f1002765d9c2913dd"
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
