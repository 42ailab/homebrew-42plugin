class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.38"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.38/42plugin-darwin-arm64.tar.gz"
      sha256 "0abdfd040c7edaad51cf1bdf32bc239002a6973683ad40a01992dde71a607514"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.38/42plugin-darwin-x64.tar.gz"
      sha256 "0a5e1bd955c40529b5a4fec1140776acea03603eb48e403a968eae312ea26091"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.38/42plugin-linux-arm64.tar.gz"
      sha256 "bb467d5c3e7d6515a0bfdb4c546a858c6db478e557ff84fe3176ac1a2151934d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.38/42plugin-linux-x64.tar.gz"
      sha256 "c66c85352e285d988ad3d530856bab549d527d06c7c9cc778c5242d88a653a56"
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
