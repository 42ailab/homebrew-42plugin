class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.41"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.41/42plugin-darwin-arm64.tar.gz"
      sha256 "fee784ca078a1e4b778a4ac62d7f52a8c006c83fd8e43c1ce8daa6739d4c7141"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.41/42plugin-darwin-x64.tar.gz"
      sha256 "05e6a8bb90707f061d440b94907b40bbb20bab4071fab4add785daecc6573808"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.41/42plugin-linux-arm64.tar.gz"
      sha256 "4ca65eaed13d92cb2a678c8b2a088a24fb28d64337f396e456d746eec31d0169"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.41/42plugin-linux-x64.tar.gz"
      sha256 "67e6ddfd51f0ce2b9adbb89d98d5aaa59a06db2f519eea066c35ab2563bf6942"
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
