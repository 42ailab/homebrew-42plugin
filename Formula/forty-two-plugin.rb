# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.12/42plugin-darwin-arm64.tar.gz"
      sha256 "1abd6ee540059c4ff598f5ef5a85388a37004daf5eb2392bdb2a3af755d34870"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.12/42plugin-darwin-x64.tar.gz"
      sha256 "0dfe17f3996656023bc10de93b750657aeb9c757f222d20e2e6056e61f67b6b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.12/42plugin-linux-arm64.tar.gz"
      sha256 "85cc9bd78c92c8171903889945e61212266d8d0580a7b3f0079bdde22dff445b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.12/42plugin-linux-x64.tar.gz"
      sha256 "bbea91d1ff16c0cf6b0251880826d1fa65ac05906a7e8816f7d932874054fea3"
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
