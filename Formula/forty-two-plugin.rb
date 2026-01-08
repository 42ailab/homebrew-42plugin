class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.0/42plugin-darwin-arm64.tar.gz"
      sha256 "f4e0795d0cd4ea76e98ff6bbfa55f74bcddb70f6390523bf02a947f2af350b69"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.0/42plugin-darwin-x64.tar.gz"
      sha256 "d30f384d360f99126999cdc7c7d434f78e9f6e079c86b2f03f42d707c9b2d33c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.0/42plugin-linux-arm64.tar.gz"
      sha256 "02c1076c1362d9d525d746b5304e001597b0ab7bddaeaff69c1bae6e5caf9d67"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.0/42plugin-linux-x64.tar.gz"
      sha256 "3ced3eee05833ab95fa1562e96504ef442b0bd73bfe532e9edbc66c6fc39750d"
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
