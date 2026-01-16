class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.24"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.24/42plugin-darwin-arm64.tar.gz"
      sha256 "78c2ca347332cbcb92599c5757a805d60133161a9be223c2e36b1ec02754e50a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.24/42plugin-darwin-x64.tar.gz"
      sha256 "f697c78252c9e70981c694bc1e173439c2fd85f9acfb258e4b5b792f679303d4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.24/42plugin-linux-arm64.tar.gz"
      sha256 "84f369da6ba5797f544af58d0bb097e56ccc5e00fad2367fcee3460b9ebbdde6"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.24/42plugin-linux-x64.tar.gz"
      sha256 "14da110ce2fd0927fd3016693c6bab5670b29d34468b0f72618e23620d5650fa"
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
