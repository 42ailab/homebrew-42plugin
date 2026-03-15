class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.1"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.1/42plugin-darwin-arm64.tar.gz"
      sha256 "1d2e63141f1f69536789b628c71915d487f299296c11995ccaa1b7391448c3e4"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.1/42plugin-darwin-x64.tar.gz"
      sha256 "9036d68cbf2632f9e3c369e0bdee31d8d0a631664527c209825e2344e27ebe47"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.1/42plugin-linux-arm64.tar.gz"
      sha256 "29ae131234c35ed1856c8ee0b019bb6cb05a694a13b4e44dc8aff8979e9e30ec"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.1/42plugin-linux-x64.tar.gz"
      sha256 "25b8f02e5b01e7753c5c98d101e6710099167dcfcd683afac61c6bd017ef0712"
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
