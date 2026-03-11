class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.3.8"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.8/42plugin-darwin-arm64.tar.gz"
      sha256 "40896100e564ae44ef6d7e3af43a94a178c674f85b1ac1cfa15b527378649b84"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.8/42plugin-darwin-x64.tar.gz"
      sha256 "80c6b69f68674d6dc582f3f7b189dfe6b52337c0b71a0dd90a3cae28ec713ac0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.8/42plugin-linux-arm64.tar.gz"
      sha256 "8f3f3c269e2bc31ecaf033be5de33a3849f9279581dd9db25a7db9bab21f5b34"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.3.8/42plugin-linux-x64.tar.gz"
      sha256 "76da63e9d13f47db74eb1b480879252076401a71591eb8576a4e5724286446ab"
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
