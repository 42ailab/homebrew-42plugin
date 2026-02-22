class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.42"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.42/42plugin-darwin-arm64.tar.gz"
      sha256 "25f50031504486a79b28e8ecfde30ef07c8ba254c9e64b812d8bb7ce8736172e"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.42/42plugin-darwin-x64.tar.gz"
      sha256 "0eb77c43673c6123b6991a68d20f017566955cab902bf267ae4794517c8db6f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.42/42plugin-linux-arm64.tar.gz"
      sha256 "0728497b51f55031f70a86e2038cac16f2a687684f4114c9a1d5b35e429170fd"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.42/42plugin-linux-x64.tar.gz"
      sha256 "4b60daf53b3bbbcb60e4eb479f34aadcf3755d148cd538ae4cba83e3815db693"
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
