class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.28"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.28/42plugin-darwin-arm64.tar.gz"
      sha256 "bba9d2faea6668a15d151c06440157eb86768eab19f346e45a0ac4f3b4cedd12"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.28/42plugin-darwin-x64.tar.gz"
      sha256 "be5ffe3f87744ab1ec7a478a36792f4eca7f6dc2f6625fa141ec9a857c42740a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.28/42plugin-linux-arm64.tar.gz"
      sha256 "df83f74e7070f73d30a84302485d0b3ecb463717e80963af86870c7840034eb4"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.28/42plugin-linux-x64.tar.gz"
      sha256 "41709f6931f29623cfc7ac92a2503241f971c1d91f4d2c1da417463ee2a46feb"
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
