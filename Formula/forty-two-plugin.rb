class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.30"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.30/42plugin-darwin-arm64.tar.gz"
      sha256 "53a1298363d2c1aecde94df9fe42456ffad35f58591deefa98ea1640d2e13fac"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.30/42plugin-darwin-x64.tar.gz"
      sha256 "c0a4f6d2b0edd9278c9377e8c74b0d0ec58276f7887f871e399f17da44aca20e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.30/42plugin-linux-arm64.tar.gz"
      sha256 "0b8138eb242c6060fbd9ac476c991919c319f2ef81b2da6462e79c3f0dbfd001"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.30/42plugin-linux-x64.tar.gz"
      sha256 "dc908c42fabfee0dd62e84fe17ca03d0231bf46d8b6959a033e8982294b0ac8e"
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
