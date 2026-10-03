class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.23"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.23/42plugin-darwin-arm64.tar.gz"
      sha256 "dcc295ec7fd8e3dd8932d2a691af5d7b8f60a507b9eca38985f2de2bb8f88eac"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.23/42plugin-darwin-x64.tar.gz"
      sha256 "9d4d1b37a5b9fce88ae4b52ddc7d2bd8e62b589a968891880cd5a68f23cc7b61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.23/42plugin-linux-arm64.tar.gz"
      sha256 "19965fc228451762aee17aa29a1c99f3695e1200ab8da0429a3d8088ac724f36"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.23/42plugin-linux-x64.tar.gz"
      sha256 "154c43f9730eabfcacd061365cd3183ab21cec4432b4f7b425a81b3757ddfdc4"
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
