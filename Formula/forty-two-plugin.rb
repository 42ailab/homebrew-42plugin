class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.10"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.10/42plugin-darwin-arm64.tar.gz"
      sha256 "16f38ca2856f93609dd8f7be32e3357a9283fd7441c18fbe18830b8058a76a22"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.10/42plugin-darwin-x64.tar.gz"
      sha256 "2e9c8abc3a5a2b8404b37b62d40ae49742a143f900dc2c054cb4ee3b69082545"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.10/42plugin-linux-arm64.tar.gz"
      sha256 "ef21ca109ee75d23630c817fba4f9c933a287a8052493db2e1a09d7612bd4d89"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.10/42plugin-linux-x64.tar.gz"
      sha256 "05add910d0830c5c65a4a6fc19cb22b1d9e5faac5b21aa82f62391bb8a4c43dd"
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
