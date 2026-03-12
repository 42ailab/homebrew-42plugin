class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.10"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.10/42plugin-darwin-arm64.tar.gz"
      sha256 "d5dc2bd0cf6058cc186e18a338e4fca14c3a5c9580a2cb2e25e6251f503ac4ae"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.10/42plugin-darwin-x64.tar.gz"
      sha256 "09a05e573f25eb65d88bdc152c81b3dae6339347ddbcd50a2c5e8fcd0b9cb868"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.10/42plugin-linux-arm64.tar.gz"
      sha256 "140a9300ea7eab7c563e5ceb7e21c4da4f5d7668874a208a05b6c37b2e534480"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.10/42plugin-linux-x64.tar.gz"
      sha256 "bffe385e31f3e34f8c4e27d27e6f7bbec76c8569f3ad0522d3738c2ad82f892f"
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
