class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.3"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.3/42plugin-darwin-arm64.tar.gz"
      sha256 "34328c8d8a56e919f12c9a688aebadfdf963b735f4250d9796ea1d8d18442c77"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.3/42plugin-darwin-x64.tar.gz"
      sha256 "e254ee021ddc14fdbf4098a881cdde9c340d01120d7f3ced3cff86941a03db15"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.3/42plugin-linux-arm64.tar.gz"
      sha256 "f6750f331c94744435daf12edab49cb6be68b17057b53c873022fe568ebca4b5"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.3/42plugin-linux-x64.tar.gz"
      sha256 "886c15fa2c76ab4bc584003ebdee38b7f9ec5dd491dc077a801f10281df2b614"
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
