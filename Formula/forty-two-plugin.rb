class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.8"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.8/42plugin-darwin-arm64.tar.gz"
      sha256 "8e3d557f4b27d50826d1dabddeee0a19d60294586bcc13422a60d473168de9e4"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.8/42plugin-darwin-x64.tar.gz"
      sha256 "be0e6ca6452636192123c36258de85c8b87b0d9067281b4bbb5d0ddfb72702c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.8/42plugin-linux-arm64.tar.gz"
      sha256 "54e83a8a67482633da49785efb6b4a4297b34f66cd2a338fe9589b01c90914b1"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.8/42plugin-linux-x64.tar.gz"
      sha256 "3cd9832efddce7ff92459bc3f7ddb482c955a512b303bbeb42981df028920ea8"
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
