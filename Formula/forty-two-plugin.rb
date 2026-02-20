class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.38"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.38/42plugin-darwin-arm64.tar.gz"
      sha256 "2a1167fd814971f9a3ff0105cc2422bab5b12dc49fa219d9dfa5d1714da756ab"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.38/42plugin-darwin-x64.tar.gz"
      sha256 "aad3b6bcdf7e163fd2ac8d154d6607fd4625d07bf480b99de0c766612896cf85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.38/42plugin-linux-arm64.tar.gz"
      sha256 "35625600bcd429e3c905e3dc7d3d833cd4629b3feec17e8f184bd6e5f4618be6"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.38/42plugin-linux-x64.tar.gz"
      sha256 "1db784ba1f2681ece7b5f75054c2331ed1bc48fcc12ef7e44c7013ba00b38106"
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
