class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.37"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.37/42plugin-darwin-arm64.tar.gz"
      sha256 "888d7ffd54a747406a883c3516b7e701f439e3f298b836228afd5acd7ddedd0d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.37/42plugin-darwin-x64.tar.gz"
      sha256 "062d364a3318b241c678476bc98fe0a1cabad655bcbd86db176b3507eef64e77"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.37/42plugin-linux-arm64.tar.gz"
      sha256 "a6da0ba8037c064d7071fcd801ee4b15166f5547d6e50c40b5f048516b0efb5a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.37/42plugin-linux-x64.tar.gz"
      sha256 "0ea5ec594da011acb748df7358a07e3f4ff6a3d3313eeb949de992b6c4df4cb9"
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
