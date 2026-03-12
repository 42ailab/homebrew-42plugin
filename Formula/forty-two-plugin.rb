class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.11"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.11/42plugin-darwin-arm64.tar.gz"
      sha256 "5e11121e1b174167111e51bc5d69dd179d2410f53efee42948620f3cdb35ae67"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.11/42plugin-darwin-x64.tar.gz"
      sha256 "c62b6a8578cc1df023fdf5d69ce106cd8d5df5198040523a138302cba68dd437"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.11/42plugin-linux-arm64.tar.gz"
      sha256 "c1e151a0e7a3a3d6dfa387161479b2bc6ee8ca27c63eaa11f42daba6b41f1c68"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.11/42plugin-linux-x64.tar.gz"
      sha256 "0411b1e7ae6e5ce98891ee2d832a9131fdd6dd0c0851addd35d0dd8ae6aaba4e"
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
