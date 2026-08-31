class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.21"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.21/42plugin-darwin-arm64.tar.gz"
      sha256 "f34b7686d8ca52b15c7da8e0731de01c69142c67040d76e214d150f3c1e33452"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.21/42plugin-darwin-x64.tar.gz"
      sha256 "bcfd3c4bf1bfbc643bb8ce1d5afd0ec8be47c020e5c889c3be1c41a781f928c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.21/42plugin-linux-arm64.tar.gz"
      sha256 "d0c41f4a2a59479a929725b159d46b7d80eaf8da73cfd2d23c5052fd0d660c6d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.21/42plugin-linux-x64.tar.gz"
      sha256 "64816309d59f91809f70a5127881c43afdf5c171d3d8940916a5731232a92dfe"
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
