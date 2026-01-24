class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.27"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.27/42plugin-darwin-arm64.tar.gz"
      sha256 "59dab89b6fb8dbe9c8c20ddbe5f663c4d0b945463101a7794893732577ed1870"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.27/42plugin-darwin-x64.tar.gz"
      sha256 "793b801b6f5af644a5c8b538f96994a4d6c454c1e7a3bb4cc2d852fd7b71d42c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.27/42plugin-linux-arm64.tar.gz"
      sha256 "675353e1dcf614acf8750b62115496490664c2cab753a023fdffc25079c32815"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.27/42plugin-linux-x64.tar.gz"
      sha256 "6f5c4c6f1765602699d6ba56159d857e134b158d257c544349fd130c9626a986"
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
