class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.19"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.19/42plugin-darwin-arm64.tar.gz"
      sha256 "2d60571eef9ab90354ae3f2c78964390f84cff51886a6fdf95de324e84312e8e"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.19/42plugin-darwin-x64.tar.gz"
      sha256 "c9370663a0f6d5e53e6484c5bbabfa9f90a3cb97d3828651d6f2a824f69d604f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.19/42plugin-linux-arm64.tar.gz"
      sha256 "dc7c8e033d54d1353475b0b54b37b408e3d2abf893c8240e13c836aa2ede805c"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.19/42plugin-linux-x64.tar.gz"
      sha256 "e69d8ed4e52ebab6b97604a4b7fc67227a667a6c43544f2be673c8b0c8e9e2fb"
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
