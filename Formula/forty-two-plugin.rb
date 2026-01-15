class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.19"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.19/42plugin-darwin-arm64.tar.gz"
      sha256 "aad0ed438e154cd20717002a49556d67b30d3f27dbfde4f62aed7cfcb834856a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.19/42plugin-darwin-x64.tar.gz"
      sha256 "01c9111943591a9215367e9e89533cc133ed29890585340aaf0d4c6117a647ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.19/42plugin-linux-arm64.tar.gz"
      sha256 "15eb7f83809949cbf52f123175159257f6649352119728f748829bdd32c1d33e"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.19/42plugin-linux-x64.tar.gz"
      sha256 "cf3eb9f0f30bc3116b94dd2cfc8a13ea028b25f52afa7a2b7d4d79662709f5a5"
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
