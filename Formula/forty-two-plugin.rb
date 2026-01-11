class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.11"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.11/42plugin-darwin-arm64.tar.gz"
      sha256 "fc8d859486a5d25f7b9f6f6f31c6de47c12ee8a00a628ef2b157c644a66319dc"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.11/42plugin-darwin-x64.tar.gz"
      sha256 "d1cd9b77753866dd702fa7b05bad7ad847d7b7c2ebc05e111cac586b01771d52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.11/42plugin-linux-arm64.tar.gz"
      sha256 "81fc55e9394f1dc9daa0ccfc23a3a68b3fa4352fe263f0bb681211ec41e62d99"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.11/42plugin-linux-x64.tar.gz"
      sha256 "6ea274b01f40d5587c7471f29b5544662586aa09dc626d2d7819048cf1d99947"
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
