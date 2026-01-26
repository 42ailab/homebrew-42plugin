class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.32"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.32/42plugin-darwin-arm64.tar.gz"
      sha256 "107b82440a27a68452fcf490c0620efa887d2a251a92912bb1e49e9bc2fefd2b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.32/42plugin-darwin-x64.tar.gz"
      sha256 "bb2c8268d6de39c06b0ccb5a7abefb68e746d617980ef1f67c3591d709379e94"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.32/42plugin-linux-arm64.tar.gz"
      sha256 "ffb19320907cc254b416818c1a5aef6d1b95df335f064cf30692d8bfab15374a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.32/42plugin-linux-x64.tar.gz"
      sha256 "fc96456c9b2ef4945b4c4646a2e4280d941ade07843348ed34ff15b4856ae842"
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
