class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.39"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.39/42plugin-darwin-arm64.tar.gz"
      sha256 "cb25fc8d2761bf1c609f7d1e51736de812f26edf660aaa05fd6306574179da68"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.39/42plugin-darwin-x64.tar.gz"
      sha256 "1edb5ba68aa1253cd950c2f56ec8803bb624bb8bca8c22d0194fd810a1fc1cf1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.39/42plugin-linux-arm64.tar.gz"
      sha256 "3137800d22bbfbbf64dfa4e86997f0cc979ba75219f5eedb52949df8977c041c"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.39/42plugin-linux-x64.tar.gz"
      sha256 "0c7148c4a3ea3255db932aff0d308b9a2951956c19321f25a9e4b198079a700e"
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
