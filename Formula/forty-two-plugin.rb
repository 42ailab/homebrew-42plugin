class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.12"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.12/42plugin-darwin-arm64.tar.gz"
      sha256 "7e639d258df6b8e1a2b1332371f48c6a4380e0dc9f6ee5076ac11e4c16e5e51a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.12/42plugin-darwin-x64.tar.gz"
      sha256 "fd0418001bfcdfcf8ba8b4c84535c3200c69add96c3d19f4688055610e6756c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.12/42plugin-linux-arm64.tar.gz"
      sha256 "ee86ce05c8f97857f5c55d8681030a314d228f3d0fa2ba617814f3365efb9419"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.12/42plugin-linux-x64.tar.gz"
      sha256 "2b5c7c369145b5bed4a6e0b888945ab800cb2559e38e211220934c5193f85c3d"
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
