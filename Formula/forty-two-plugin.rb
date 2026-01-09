class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.2"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.2/42plugin-darwin-arm64.tar.gz"
      sha256 "0076b9e49cb9bd40f292cc3bbad19009be04e30c2306dbb59beee39e6195ba4a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.2/42plugin-darwin-x64.tar.gz"
      sha256 "627f0ddfaae8c5b655c950d95a5047c0640637f8ca1b015b84e7818c7a6ca33f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.2/42plugin-linux-arm64.tar.gz"
      sha256 "cf27fc03e786462809318d6db88ed74a7774267b72a2a42bb80d4d360d2e4b4d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.2/42plugin-linux-x64.tar.gz"
      sha256 "be4f1a5e65e4d30020f2fee6e06b2ea58fbce50e34c89f6c8e68ed16063fcdbf"
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
