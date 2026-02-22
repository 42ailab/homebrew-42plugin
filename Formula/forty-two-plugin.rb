class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.0/42plugin-darwin-arm64.tar.gz"
      sha256 "c387e26a2853010b56a228e4b10fc6c18f931754125f2df4c03ae1ee82890023"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.0/42plugin-darwin-x64.tar.gz"
      sha256 "d3ab69ef8e7198197e42d93c3b4fb15127d25047dc2ca764d1a507b4e5936fa1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.0/42plugin-linux-arm64.tar.gz"
      sha256 "2831db864e10ef9b2c7bb2fd5ec6b9ef6ba7ea225961ae0721a47c2b86a82e45"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.0/42plugin-linux-x64.tar.gz"
      sha256 "54e0c228aca0cef5e87f5b6bedb779d85a4d6d45521d62472b37e8cb67d2b625"
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
