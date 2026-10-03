class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.22"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.22/42plugin-darwin-arm64.tar.gz"
      sha256 "d45cc545d4f1f981eb1571fb9e18d03b45b40f93a331276b2a22c5c39c4477aa"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.22/42plugin-darwin-x64.tar.gz"
      sha256 "d8cc210d79d5f628f28c3216add431a5f58d7b4e963631ee483d7b027ac14a42"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.22/42plugin-linux-arm64.tar.gz"
      sha256 "855ba5732b3ac2559b9865a14703800166ea40d5ed0e9c927325b65ee4ec4dba"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.22/42plugin-linux-x64.tar.gz"
      sha256 "76d9ad6865ea01c6d94e47ddf5cfc0bac944e6f456f003247509da7beaf6c39b"
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
