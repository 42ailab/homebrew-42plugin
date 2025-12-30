class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.36"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.36/42plugin-darwin-arm64.tar.gz"
      sha256 "5f13434e92f2603bb1634bd855626512e4102a6d89738b44268efc5f7594984c"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.36/42plugin-darwin-x64.tar.gz"
      sha256 "a619b74859bf6d3c6bb734852f9d4961b058d91acef93c31440483e6870f835c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.36/42plugin-linux-arm64.tar.gz"
      sha256 "2bd581ff41ab1185d76b7e093c305b37437572e47ba53af3a29cbf0c0ac52778"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.36/42plugin-linux-x64.tar.gz"
      sha256 "05af0065ee73b9f1c35147dc37eeefc2384a3a2ffa99019aca733fbda10e46fc"
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
