class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.39"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.39/42plugin-darwin-arm64.tar.gz"
      sha256 "60d6d83dafa2c81980b2aa06e330581e929e0c576af3a738d13d4a6193facbc1"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.39/42plugin-darwin-x64.tar.gz"
      sha256 "f891768d37b58798f18bc1dce7bd9f0279c35808c3cfca0f7a268f8ebdd348fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.39/42plugin-linux-arm64.tar.gz"
      sha256 "1e4edf0f5661b5d8e205652fc4c0a308b65e929e4c8f543a200310552c761f9e"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.39/42plugin-linux-x64.tar.gz"
      sha256 "a786174c78ea2a743013a6159627a15ff4e9573b875534686ca22212b5417a4c"
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
