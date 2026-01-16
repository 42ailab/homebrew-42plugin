class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.22"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.22/42plugin-darwin-arm64.tar.gz"
      sha256 "9cb3d3473a5d5abf8c8ab7f24b72904e7264420b80d4372c7adcf5bbfe09b236"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.22/42plugin-darwin-x64.tar.gz"
      sha256 "9d0a228d2c8c7dee7dd984302c434078b5967c8908098edfe4bddd421c0228b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.22/42plugin-linux-arm64.tar.gz"
      sha256 "9541a40ff5b2e241096fbb9925790f0f7e379e991e4e6fe2e038f21f7cecd35b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.22/42plugin-linux-x64.tar.gz"
      sha256 "1321a534991cfd517d1bf8b4db82ae8c927c23565bdc80fa9cffe0f937a49743"
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
