class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.13"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.13/42plugin-darwin-arm64.tar.gz"
      sha256 "4c9f680ecca9ac1c0403f319b426b19ca55219933a068b7a08405cc86ec602ea"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.13/42plugin-darwin-x64.tar.gz"
      sha256 "2aaf419b67db798553bbfb9079df6554880e6a4e8bb58f5a9eda13442798c91e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.13/42plugin-linux-arm64.tar.gz"
      sha256 "d850466f6c2ad61976c1342a33f3b01b658faf88d4be1d0ea52c3a903982d092"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.13/42plugin-linux-x64.tar.gz"
      sha256 "9b5ef69e5a153294806e8965ba2f278a1713003723d8cc2a6bea1b430a7a3792"
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
