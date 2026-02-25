class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.3"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.3/42plugin-darwin-arm64.tar.gz"
      sha256 "3f7d2b2f6e177a22a5da85f93530438a1313c2544eb0b0f844e1d9051aff10ff"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.3/42plugin-darwin-x64.tar.gz"
      sha256 "f7545d49c2d5f1ef646cdc63a4b4c7623582172bb5d040dc8a4972ae4760d4ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.3/42plugin-linux-arm64.tar.gz"
      sha256 "bdca219e885df2a535ef7eebb12fae2a8f62f090fdc42d1bd34161e2bcdc5309"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.3/42plugin-linux-x64.tar.gz"
      sha256 "d94fdc68aa65e8ddb96ffdc9039a14bfc981c37425be569e9a1eab33f16f8d65"
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
