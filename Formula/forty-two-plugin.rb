class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.14"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.14/42plugin-darwin-arm64.tar.gz"
      sha256 "904fd993e70c0270407375dbe2025512b8b763c94cd5189134e54fb5c52f831a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.14/42plugin-darwin-x64.tar.gz"
      sha256 "13c0752ec983afe7e50bec6d9ac679a395fb88b40e77b52df945b8cf3199d070"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.14/42plugin-linux-arm64.tar.gz"
      sha256 "57bdad723c25750bf0605d5dfb784cae19408fe48a3cc6b8162d2c938cd9cb96"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.14/42plugin-linux-x64.tar.gz"
      sha256 "ed104b34d55c8c0e47f3d823de845f94f71d41fad3151419599469705b4a6e5b"
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
