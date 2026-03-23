class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.6"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.6/42plugin-darwin-arm64.tar.gz"
      sha256 "e137ccdd1c76780f146a6d2d84f53b770602be596944e433ccf55d46f76bf7f8"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.6/42plugin-darwin-x64.tar.gz"
      sha256 "c25171fa88baa55a69660d35c4c90c90dabc3f66e115d3f3f96d3cef0a6003d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.6/42plugin-linux-arm64.tar.gz"
      sha256 "edab937714a7a71ad3c8a54db2396127e5d3eedb2b0321fe18462e816605f1bb"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.6/42plugin-linux-x64.tar.gz"
      sha256 "435e64c381028f7f8b7dd9850a829b6cbe28f7c36a24ebc7c0efa4c776a2d712"
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
