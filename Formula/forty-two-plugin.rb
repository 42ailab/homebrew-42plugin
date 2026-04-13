class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.11"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.11/42plugin-darwin-arm64.tar.gz"
      sha256 "749577211f7ab68169dbf6daf7787f429d5349f6ee169ee782d79506f0da2221"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.11/42plugin-darwin-x64.tar.gz"
      sha256 "25b93f2394b00569e324f0313b0a1fc1851f44576741812b5fa0c322062b69f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.11/42plugin-linux-arm64.tar.gz"
      sha256 "78f9624acc0f3a49ee9ac4aceacd49081c5f5aac502b7cc02a5d8db6c8bbca9f"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.11/42plugin-linux-x64.tar.gz"
      sha256 "3b349c3355b35ab2473217fc45ba0479ed04d80113037e9da827499334378145"
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
