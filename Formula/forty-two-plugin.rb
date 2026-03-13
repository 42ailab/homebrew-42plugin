class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.13"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.13/42plugin-darwin-arm64.tar.gz"
      sha256 "07abe5bce6e89e40fda6950812d289c21a6476a41b82158c33771387ff9003d8"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.13/42plugin-darwin-x64.tar.gz"
      sha256 "f506499bf4af0ace81bd6731a377bf56af768a33650c7d31b54a006540029765"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.13/42plugin-linux-arm64.tar.gz"
      sha256 "95cebcfdd0e5a80fcea6cc9ebe4b059417edb654723d5dac16eadc648b0bc2ab"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.13/42plugin-linux-x64.tar.gz"
      sha256 "60f551cffbe51f134c28ed704ece4a6f97441d3572a1dd8fb1b27be47529cf3c"
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
