class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.12"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.12/42plugin-darwin-arm64.tar.gz"
      sha256 "09a1d4dd4eef9baf3aaf0725f6e14c68ef2e6a4e7df358c0e75e8af6f3a39086"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.12/42plugin-darwin-x64.tar.gz"
      sha256 "881faa10ae6a59514c9f0419aeefad1837530531eb7409dcc9a6ca705a8bfbdf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.12/42plugin-linux-arm64.tar.gz"
      sha256 "b78301ba1aaf9b3a23e4fbf615cf09d5443f7b78d7c8ff925bd530514c69db03"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.12/42plugin-linux-x64.tar.gz"
      sha256 "7cd31fec2b1efed32ec016b9959c6d788dae0b081ee11d495c03c1c8eff99c4e"
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
