class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.7"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.7/42plugin-darwin-arm64.tar.gz"
      sha256 "2f0b25d4c23dc7925b2d4894d8ff66da2650f7003252fde7461c85cd4af20233"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.7/42plugin-darwin-x64.tar.gz"
      sha256 "f0a55a6073798af020af81675441384f572dc31e36f4c83550af94b62f50f5b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.7/42plugin-linux-arm64.tar.gz"
      sha256 "e02e1810399a78ac912d3eeaa1e0b061de51cccfe23b1f1e1211a1f68741ceb2"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.7/42plugin-linux-x64.tar.gz"
      sha256 "2096621525c8b3a2fcdc7a1384768320f70f5d0e5ea9c317687d887a059016f6"
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
