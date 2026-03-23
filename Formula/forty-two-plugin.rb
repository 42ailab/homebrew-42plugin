class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.8"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.8/42plugin-darwin-arm64.tar.gz"
      sha256 "aa2c86dcf086a10b154e05880153eeb99946d7ef9c8ff1b423af87a80d263011"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.8/42plugin-darwin-x64.tar.gz"
      sha256 "5fbcc20705c4ace95643501e6592c579cb4e6904862e3f467ce9e7a8afbeb1a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.8/42plugin-linux-arm64.tar.gz"
      sha256 "808dd663d87580ee3544123ccfb64e854161a0d5e699b73af2fb1e0bb7fc7054"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.8/42plugin-linux-x64.tar.gz"
      sha256 "e0f71291107657ddbbdafbce4b82210dc4343c64dabc01452b9edbc76424aa78"
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
