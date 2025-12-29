class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.34"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.34/42plugin-darwin-arm64.tar.gz"
      sha256 "9e9cdd1a8c6eef193184b9790c6a307b4cd71f5f4c648d5c79dd7ff7320e0dd2"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.34/42plugin-darwin-x64.tar.gz"
      sha256 "904f97a883dd3d5a39d6bfb709fb36a89d2337786a1dc9fdd3cab68973c05898"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.34/42plugin-linux-arm64.tar.gz"
      sha256 "888e83555e6c3034d5bf78dda6bcc5a0cde084f66c942b7fee0eb76af846a203"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.34/42plugin-linux-x64.tar.gz"
      sha256 "2c68bd15593083833c0f273edad482d6df1cf8d8d71712434eccece3475dfe97"
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
