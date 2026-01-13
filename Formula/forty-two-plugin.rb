class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.17"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.17/42plugin-darwin-arm64.tar.gz"
      sha256 "49743f44b00d69474b0eba03b1742f3192bac5abe31ec5db5dd3fe535bec38e2"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.17/42plugin-darwin-x64.tar.gz"
      sha256 "13adee7d49c067f04e02d4205b44d475cd0e2d39491b50c8ced1bc5aa319dbf6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.17/42plugin-linux-arm64.tar.gz"
      sha256 "cfc4b1a6c64586048159fec7617cd9382fdea1eb85cda317e95f681e9f232607"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.17/42plugin-linux-x64.tar.gz"
      sha256 "70b07e5fd8746d4e6ff4af195bdb9547bbf397e06f2e9bee6093fca61a394632"
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
