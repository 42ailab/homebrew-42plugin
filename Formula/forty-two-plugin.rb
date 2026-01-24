class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.26"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.26/42plugin-darwin-arm64.tar.gz"
      sha256 "61152bcf7e49b209a04cda27b0b00c300888a0978722693f9b01e558ee3587bc"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.26/42plugin-darwin-x64.tar.gz"
      sha256 "5cec1e2e30531eb83f99641a7976cd28580e87b47c2472944b15cd4b0255f780"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.26/42plugin-linux-arm64.tar.gz"
      sha256 "1ba7e1a4b7e1aeb70f4c3f64b18b8b03d05b6a6ac6961923cee63f2a6ceb346d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.26/42plugin-linux-x64.tar.gz"
      sha256 "b7c265fdd09d7ba6e507efe7d57d8d9b52b216b22253df89f48a5a35fcf128f0"
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
