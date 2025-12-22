# frozen_string_literal: true

# 42plugin Homebrew Formula
# 自动生成，请勿手动编辑

class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI - 插件发现、分发、安装、管理"
  homepage "https://42plugin.com"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.7/42plugin-darwin-arm64.tar.gz"
      sha256 "c3b976efcf2789f66cb19be5fd3f87f1c1a0950fc201530cafccbb758a379da0"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.7/42plugin-darwin-x64.tar.gz"
      sha256 "defc8111bd9968e4ef20355a8b3c1f712da7e4657839f7c91039b60ed8b514fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.7/42plugin-linux-arm64.tar.gz"
      sha256 "63e5efcb66eddbb3592c2dd6dd349b445c54d6137f12f14e4b53ca07e15abf6d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.7/42plugin-linux-x64.tar.gz"
      sha256 "6ee28c1ed671a001503b8f7ee3a9d145e427af16b79e5aaa599bfe7c9ce5ede6"
    end
  end

  def install
    bin.install "42plugin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/42plugin --version")
  end
end
