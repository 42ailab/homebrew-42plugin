class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.13"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.13/42plugin-darwin-arm64.tar.gz"
      sha256 "a4d08b7cd0e62d3cda24855d57372fd4a89a97117bdf714aff8f3acffb015994"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.13/42plugin-darwin-x64.tar.gz"
      sha256 "52d6469bc2eeb20be3da1d5b59982eb10cdf605a5af352a6c6d72ca32de5f499"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.13/42plugin-linux-arm64.tar.gz"
      sha256 "94d8fd1845928cbd5b1f57bfa4bc410ff0362b75809e0487e001b5fc94db3803"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.13/42plugin-linux-x64.tar.gz"
      sha256 "cdf63e9b52a745d83662490cb32b3f1a7303a2d9e82cb4a3830f0aa7305bfc59"
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
