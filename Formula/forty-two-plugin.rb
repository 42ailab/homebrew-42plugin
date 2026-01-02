class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.40"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.40/42plugin-darwin-arm64.tar.gz"
      sha256 "2e9f155402aed00c41160fd483f300cac6194bef35f28335d5c158c6d0702f81"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.40/42plugin-darwin-x64.tar.gz"
      sha256 "ef6b121ae1700bc54a4178c2554bec8521fe6c49c072e1cd6df69b5a988d0e5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.40/42plugin-linux-arm64.tar.gz"
      sha256 "b93eb81d02311620fe3a1a7629dabb6ce76f66fe9dad144de2d6cae19b2481d2"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.40/42plugin-linux-x64.tar.gz"
      sha256 "f8df641b9ad4257652129a66ce226434c741769e5cd995c28ff2b58b79aab7aa"
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
