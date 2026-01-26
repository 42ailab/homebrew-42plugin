class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.31"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.31/42plugin-darwin-arm64.tar.gz"
      sha256 "1d877cb8d06f0d2515336c0d18a04ab9c9054647d6ccf00916f6a3e6253b23ac"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.31/42plugin-darwin-x64.tar.gz"
      sha256 "1cd200bfa4b0311bced271e94dd78e42f264e3de167db7eefc095677ce8a0886"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.31/42plugin-linux-arm64.tar.gz"
      sha256 "62840310ff29cc9cdf54abaefdd1c553f718ad6fb8aff52cddffe6e454c56a34"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.31/42plugin-linux-x64.tar.gz"
      sha256 "65708818fcb7675ed35638acbcea0ec6f577f60c390ad495d12bd71bf444555a"
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
