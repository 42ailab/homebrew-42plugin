class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.15"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.15/42plugin-darwin-arm64.tar.gz"
      sha256 "384f0382f51ce113a345f6a15987255b23fc7e2ff4d17983dd4d72f783a50c78"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.15/42plugin-darwin-x64.tar.gz"
      sha256 "8486b21bef6d5b09026e5a33abe4800c14a3d4a52f489e5315ced841dba30c01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.15/42plugin-linux-arm64.tar.gz"
      sha256 "59830fa2e01945a43b3a582a36d3648d962bc448d8b50db4071c2c709b25f13b"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.15/42plugin-linux-x64.tar.gz"
      sha256 "b20effa051c96b2b71478882bf5472d41d303e4bb46d6ea28f938595246b0f2e"
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
