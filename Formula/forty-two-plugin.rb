class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.18"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.18/42plugin-darwin-arm64.tar.gz"
      sha256 "21ac2e48884ca6f82b915d9d78c3719a5100f1db17550bc2e07139f5aa0c0c0a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.18/42plugin-darwin-x64.tar.gz"
      sha256 "91326053819ecdfcc4e1a5d23099a1c993670e720d20b59cc92e230992382b0a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.18/42plugin-linux-arm64.tar.gz"
      sha256 "76d9c3194270b3b617d6def1e8c82c9f79d1ea154d3ae9f28f61db8690920b04"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.18/42plugin-linux-x64.tar.gz"
      sha256 "07af58a9bda5fc1817f003397c867d15ff631e2708155be4f22570bc9fcc8426"
    end
  end
  def install
    binary = Dir["42plugin-*"].first
    bin.install binary => "42plugin"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/42plugin --version")
  end
end
