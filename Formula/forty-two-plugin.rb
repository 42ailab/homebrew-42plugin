class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.33"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.33/42plugin-darwin-arm64.tar.gz"
      sha256 "c38b25a50de48465520c036efc8b1ec01e4b2d678040687d97b13525cf9d2bf5"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.33/42plugin-darwin-x64.tar.gz"
      sha256 "71ada6678f29860d7af7bff0f4aa17ba0ddd67f1a860073cc8775d4fb2661659"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.33/42plugin-linux-arm64.tar.gz"
      sha256 "66a0b436ff12cb6f525df8a3d8f8ded40cf0ccf01806362fd5cae7d2a6b926d8"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.33/42plugin-linux-x64.tar.gz"
      sha256 "95b5892a776c9016d83aa49e9be4bbab2109954a3309543d67436d032043017c"
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
