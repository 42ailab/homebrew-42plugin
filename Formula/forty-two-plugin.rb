class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.16"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.16/42plugin-darwin-arm64.tar.gz"
      sha256 "2091f3b9aa19c1abbf3c57a8c3c2e74c0ac28429aa47cdee24d15d9f50ba8575"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.16/42plugin-darwin-x64.tar.gz"
      sha256 "d14018e8ab6a7185373eecec774de4103aaaadd90061c19588dc599981f3d28e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.16/42plugin-linux-arm64.tar.gz"
      sha256 "54a46e2ecef86d3eaf93a23a6e92c28c6b64282d68dfc445883c4673d981d841"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.16/42plugin-linux-x64.tar.gz"
      sha256 "1b948904b4c46c82e41f6d075b56523f7d04fc3e6c986ba3716ad54d4c1ea72f"
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
