class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.20"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.20/42plugin-darwin-arm64.tar.gz"
      sha256 "9b025a98a09fe3f40ffc112b31d86b0f304107a003e9ffd2d7ab30f6e9411486"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.20/42plugin-darwin-x64.tar.gz"
      sha256 "4cfe68700f90ddc7fb1b9961d22de6275f0c9fe47c4f42d8e233ae378d348556"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.20/42plugin-linux-arm64.tar.gz"
      sha256 "e445cdf4a7257bcc3044d44516b5bd7faf6b6fe8a7c7359601597634cc19c2c5"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.20/42plugin-linux-x64.tar.gz"
      sha256 "158e842b9162602ee4bd8c86264c1a3a3c73f29ee22a4eeeec16bed274bf1001"
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
