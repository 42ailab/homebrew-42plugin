class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.25"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.25/42plugin-darwin-arm64.tar.gz"
      sha256 "86130692a4f833bbbbfaf404eb1de0563dc602a570985baaa65001e065356a15"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.25/42plugin-darwin-x64.tar.gz"
      sha256 "979e3f24e057dc0762d0c84d4711174661ccdfe240a203f1f26a4de025d3774b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.25/42plugin-linux-arm64.tar.gz"
      sha256 "236aa27c63e8f578f5092c6c005c76c166700c9a818b5882d85a6bd9b50d304f"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.25/42plugin-linux-x64.tar.gz"
      sha256 "861c8065888b3a8388a2fd8482cd6100759aca57b442eb11766c1b1096acc71a"
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
