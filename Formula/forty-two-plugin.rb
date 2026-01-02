class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.41"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.41/42plugin-darwin-arm64.tar.gz"
      sha256 "12be1a1a28fb33c3a3fb68dc2b9f09b037774c237c825485a5c296e0d3c34d89"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.41/42plugin-darwin-x64.tar.gz"
      sha256 "2b2ecbbf26bdbe90c26839259d48277da0e62a82c1bc9cd357c163c1d9593005"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.41/42plugin-linux-arm64.tar.gz"
      sha256 "c76881924204fb4f5bccea9d35fcd1e70841bd67c3ab0cadc3b20ac8333bcfdd"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.41/42plugin-linux-x64.tar.gz"
      sha256 "5f5cdfab07843fb20ad82dbfc5dbd8923bdc85ea150c6c089950a2752e850501"
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
