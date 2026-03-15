class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.0/42plugin-darwin-arm64.tar.gz"
      sha256 "6e9489391968fcc9c5192d419fc545d3e86a46e18f948f1afb94fce29dc7eb10"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.0/42plugin-darwin-x64.tar.gz"
      sha256 "0f0a4424b5413f5655319e2c35cc4441c75ec712a2245f1abdb556737ee88443"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.0/42plugin-linux-arm64.tar.gz"
      sha256 "77e1289458393b1dd8a2566413383c8f261e3fda7fa32bebe373ca0e8336b918"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.0/42plugin-linux-x64.tar.gz"
      sha256 "09bfcf99d2d1cdf073c9456d6084a695e35fb69a14d0032db813d80ce96b6f03"
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
