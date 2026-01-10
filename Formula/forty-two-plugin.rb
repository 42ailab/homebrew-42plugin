class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.4"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.4/42plugin-darwin-arm64.tar.gz"
      sha256 "880c4bb9b26b47a31f46b7286dec2bde497c0d6c6975c473b1360c38e60d7e8a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.4/42plugin-darwin-x64.tar.gz"
      sha256 "d20fb2de3839beb835524c0db6772d9f221d902c6583760297fb7c30a0de15ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.4/42plugin-linux-arm64.tar.gz"
      sha256 "7faed718be5de887b6a0e279cca59df52379c3385a617c1800279ff20cca6727"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.4/42plugin-linux-x64.tar.gz"
      sha256 "e99c47fd17e698fe31bb8604b8592154a5d7c144d14430f7e1fb0cbffae21953"
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
