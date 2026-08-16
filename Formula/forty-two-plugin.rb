class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.20"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.20/42plugin-darwin-arm64.tar.gz"
      sha256 "6a622d3c31fade9874fe7639656e888bfe66a6627d7aed835e7499f9c9b9cc22"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.20/42plugin-darwin-x64.tar.gz"
      sha256 "2a2487efb463a66d3bd089fe45034fc45b770b727bd18859d0a16e7e29eb775a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.20/42plugin-linux-arm64.tar.gz"
      sha256 "e8a36e57c2ea1b621c50b770aac9ae573167818721c3ca672b094c490eb0d2b3"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.20/42plugin-linux-x64.tar.gz"
      sha256 "c4358fe8dc443d4be5a466884e394182c2b5328b8f8f7a4b9a43970a4a0a8529"
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
