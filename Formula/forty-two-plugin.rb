class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.24"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.24/42plugin-darwin-arm64.tar.gz"
      sha256 "ae4ba115a6b49ae98f77d54197859251e0468fec76e20eaab808216bf53c9bfd"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.24/42plugin-darwin-x64.tar.gz"
      sha256 "0d775607d595fa253fda1cc2288535fc9e850056758e1f9a2c3dd3050f434a65"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.24/42plugin-linux-arm64.tar.gz"
      sha256 "a065e06eb3627af6a4aa4cb2801f7bdb2132dacd78c3d2cb0cfe4a43364df749"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.24/42plugin-linux-x64.tar.gz"
      sha256 "23bf6d5e0071f484fc6ddc8623fdcc83391f545e3fc6549e68a4164911a043da"
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
