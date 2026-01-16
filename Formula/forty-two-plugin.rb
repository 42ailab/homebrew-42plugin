class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.23"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.23/42plugin-darwin-arm64.tar.gz"
      sha256 "fbfa2848a6c648d4f93f67eaecc00cb585471a75e34b1ea5affc7af8cc75df62"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.23/42plugin-darwin-x64.tar.gz"
      sha256 "cda8623b3e1ec0e6c5b62e88a923d424e1c4865753b37d60cf3fe03008e92ed0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.23/42plugin-linux-arm64.tar.gz"
      sha256 "c4924775478e9d5f46c6d41d67dd9761c445c1b930a5c76293c01fa5b9183a84"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.23/42plugin-linux-x64.tar.gz"
      sha256 "31f7a55ce9ad2ad7a1a71797b6aa510e1e4daa5e0c45ba059d911ca40d3cb25c"
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
