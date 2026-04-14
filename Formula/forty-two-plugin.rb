class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.12"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.12/42plugin-darwin-arm64.tar.gz"
      sha256 "ae3147a2e64e1227fa66ba91ab5ea931aadc29df911745b831cf6241d09360bb"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.12/42plugin-darwin-x64.tar.gz"
      sha256 "c5aaf6ad205eb62c9a8467226465389daf314577ab789b08695acf1b6dc407d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.12/42plugin-linux-arm64.tar.gz"
      sha256 "7d4cb729904563ed7742f9b2f6fc66d9a0adfe6b7a2a56056c74d7a67f220c62"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.12/42plugin-linux-x64.tar.gz"
      sha256 "0f4eb4cd63be1311ffae6ce356fd298ebde8947aeb1357fecc2f121f0e4fd71a"
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
