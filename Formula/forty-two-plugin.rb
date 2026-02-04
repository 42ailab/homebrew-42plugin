class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.34"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.34/42plugin-darwin-arm64.tar.gz"
      sha256 "58b3dc35ea38a91eb346294f32956dba97d301261318bac8fc15389e3537212f"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.34/42plugin-darwin-x64.tar.gz"
      sha256 "2b8ba1c3d296a3c139f2e8bc1d0ff4434bbe14705b251e4cf0d1b64a4fd12d35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.34/42plugin-linux-arm64.tar.gz"
      sha256 "f9b329240e0f73725ef6bd9916192c5a88239874c64a029a9c08cae1ab9a0890"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.34/42plugin-linux-x64.tar.gz"
      sha256 "6c9990c930029a81c423869bebde6f2fcd6a8f1b70fbdf5dcf6e8e8899bf377a"
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
