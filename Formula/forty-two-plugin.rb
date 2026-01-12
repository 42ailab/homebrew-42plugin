class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.15"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.15/42plugin-darwin-arm64.tar.gz"
      sha256 "f4197d04ccec7139730b39168386b0573c20a4542eba6e8ec1163484695e84e6"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.15/42plugin-darwin-x64.tar.gz"
      sha256 "20f443ed5242c8352143e0ec2a3bd134409a654775229ba87b5241fbe070bc44"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.15/42plugin-linux-arm64.tar.gz"
      sha256 "bf85f57724785844e646b05207b8a573df724316b94d52061c52a6863a5fadd8"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.15/42plugin-linux-x64.tar.gz"
      sha256 "2807f005e50f8b85ea927bf6df4694f054817bf1b0fc8e9807807c70a4d82268"
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
