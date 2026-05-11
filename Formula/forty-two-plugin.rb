class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.18"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.18/42plugin-darwin-arm64.tar.gz"
      sha256 "6b4066e81df4df49d5916ec244ba723a8d0110f677381ec6244d449d9e61828b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.18/42plugin-darwin-x64.tar.gz"
      sha256 "3d7c0345bbb9ba252d7429df6b6ce37aae9f35322d2def910752b1200223cb37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.18/42plugin-linux-arm64.tar.gz"
      sha256 "ba459258216795e7826b6097d7a3facd7134d9dc7ac8097b081d36f5ae5053c6"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.18/42plugin-linux-x64.tar.gz"
      sha256 "a1271cdfec77d4e506c7ad72369684f24792f2a68afd31176772baa4fad473eb"
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
