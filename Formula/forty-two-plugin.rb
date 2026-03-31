class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.9"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.9/42plugin-darwin-arm64.tar.gz"
      sha256 "d1db1305e0ae00adaf7bf9e8b936f2b7f2d0084a8025af42b2e08d9e5b43f449"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.9/42plugin-darwin-x64.tar.gz"
      sha256 "066351cc27ea2fe17ad90571fe052d37256ec7473936cd2dcca56ea7747a3b70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.9/42plugin-linux-arm64.tar.gz"
      sha256 "8d6f8e0284b25f03e6425624d1be6a2da68fc88a87bc4611d74d11f18628da92"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.9/42plugin-linux-x64.tar.gz"
      sha256 "4a9634a781d6ce2e7bef53bcb07386af23abf3b4f333b1eedd21d632b2ff4e31"
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
