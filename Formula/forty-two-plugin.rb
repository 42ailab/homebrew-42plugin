class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.2"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.2/42plugin-darwin-arm64.tar.gz"
      sha256 "465819ef25f5c7898d6b7822b8243ba4c1cf8a6d7198453f12f178a753c5ab20"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.2/42plugin-darwin-x64.tar.gz"
      sha256 "253ab4173e5fc1ee9d9c12faa80b9047f87633bd7968dc5977a3c47d1552f095"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.2/42plugin-linux-arm64.tar.gz"
      sha256 "84b7ac8a348b7346dabeb92503be49c6c8b5594611969529589434bb67dcc5df"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.2/42plugin-linux-x64.tar.gz"
      sha256 "4e837e3a6209fdc92f6c06f4d305caa3491b147f7ecb709e922439bb68c8119e"
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
