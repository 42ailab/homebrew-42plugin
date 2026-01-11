class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.6"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.6/42plugin-darwin-arm64.tar.gz"
      sha256 "68574d245e0950742f902233bebd7b0581fa2bdd705f5d6f24c5a85fb392cb95"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.6/42plugin-darwin-x64.tar.gz"
      sha256 "2cebad359d3dec4b73748cf5b9c29e2689a4b3c157b38f12363b5b54fd2fb4d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.6/42plugin-linux-arm64.tar.gz"
      sha256 "a37784e4f394e4fd20bfa9b912a305cd88125844e9e356fa649d1a1ac07453eb"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.6/42plugin-linux-x64.tar.gz"
      sha256 "5ed9444f0acbc54526960e10521323de68c98dca9d8a25475b42c2ce3cd472a9"
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
