class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.7"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.7/42plugin-darwin-arm64.tar.gz"
      sha256 "7875d7688f67bccc19ed6f2209991ed66fbc0a6c0d358e02da039a61bf9f817b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.7/42plugin-darwin-x64.tar.gz"
      sha256 "7093769b02a2acefc28c54a2b31507698d0f66151078028b1c32960a4dfb18b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.7/42plugin-linux-arm64.tar.gz"
      sha256 "24360a60b24f2054e0b31dfd027862256fc8d1cae4f079d8ef6915cda8921647"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.7/42plugin-linux-x64.tar.gz"
      sha256 "95af49b9434101d9d35674245dc2b66898b17ff76732450c30837da06ba05ccb"
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
