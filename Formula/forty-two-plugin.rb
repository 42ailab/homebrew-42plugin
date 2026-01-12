class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.16"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.16/42plugin-darwin-arm64.tar.gz"
      sha256 "20e8da79cc0d601506b4c0b1e1f6aa9c3ac6aed3a6f7f48f95334acaa07ba948"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.16/42plugin-darwin-x64.tar.gz"
      sha256 "1ec53bb026c6d308d082b5689b3ea6dc55629b51100fea9fcecb761992ba7ada"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.16/42plugin-linux-arm64.tar.gz"
      sha256 "a3e7fa94544007119d45afaa60b511cfc72ad30913535eff8115bcd5e4db5a5f"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.16/42plugin-linux-x64.tar.gz"
      sha256 "8821932d7adf4655908f927e116603a89517da3de0a3b72635464ab99d3fdd4c"
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
