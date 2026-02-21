class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.40"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.40/42plugin-darwin-arm64.tar.gz"
      sha256 "a8d07530c9737c543284cc82c66aab4a475d3119622a047e1b9a2cecfe2901ab"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.40/42plugin-darwin-x64.tar.gz"
      sha256 "a91d07cd8351f3e5b803372dd830f96d59f6d0a8448c90a2677e5034c7acebe5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.40/42plugin-linux-arm64.tar.gz"
      sha256 "089e77c5cf4cd99273127748a791d5f99b7e67376d5ae54aeebe07fcac38cc04"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.40/42plugin-linux-x64.tar.gz"
      sha256 "472b49842b045ef46ae5f9492ce9c6377fa4632428fdc40c53758fd252705550"
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
