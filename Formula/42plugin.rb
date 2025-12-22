# frozen_string_literal: true

# 42plugin Homebrew Formula
# 此文件由 scripts/release.sh 自动生成，请勿手动编辑
#
# 42 进制版本规则：
# - patch: 0-42, 超过 42 后 minor +1
# - minor: 0-42, 超过 42 后 major +1
# - major: 0-∞, 无限制

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.2"
  license "MIT"

  # 使用 GitHub Release 的预编译二进制
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.2/42plugin-darwin-arm64.tar.gz"
      sha256 "5cc814f240dd5c32d7e69a39554b3ccf2c204ee8e4fd86f07218575e70a20d99"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.2/42plugin-darwin-x64.tar.gz"
      sha256 "fbeb15035d00847cc1050b996dd81226e8ba1e2b87ff6df58e9580288ae7a7f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.2/42plugin-linux-arm64.tar.gz"
      sha256 "f33489e47440ecd34f03600eb98d49d2e73cbc535d3df45c55d19f7169f5cbeb"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.2/42plugin-linux-x64.tar.gz"
      sha256 "6bf4d5ae217ee3aa72038fe00fabca588eb9c0e8ec3fd341b18bd549ebf83aa8"
    end
  end

  def install
    bin.install "42plugin"
  end

  def caveats
    <<~EOS
      ┌──────────────────────────────────────────────────────────────┐
      │  42plugin v#{version} - AI 插件生态系统 CLI                   │
      └──────────────────────────────────────────────────────────────┘

      🚀 快速开始:
        42plugin setup           # 初始化配置
        42plugin auth            # 登录账号
        42plugin search <关键词>  # 搜索插件
        42plugin install <插件>   # 安装插件

      📚 更多命令:
        42plugin --help          # 查看所有命令

      🌐 官网: https://42plugin.com
      📖 文档: https://github.com/42ailab/42plugin

      ⚡ 42 进制版本规则: patch/minor 最大值为 42
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/42plugin --version")
    system "#{bin}/42plugin", "--help"
  end
end
