class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.5"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.5/42plugin-darwin-arm64.tar.gz"
      sha256 "7f2dd8ee7bcd294d8c78e12dae3d62812b79a8de22e4848b0c111ea6ed65fc46"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.5/42plugin-darwin-x64.tar.gz"
      sha256 "9605aa8930aac8fa0974c299c34aa85ed920213d5e5adf98c19c07d20a837759"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.5/42plugin-linux-arm64.tar.gz"
      sha256 "b4e8d09c31635c7f562b1bbb428b7b460c95b36da48dac127ec3fd527471b99a"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.5/42plugin-linux-x64.tar.gz"
      sha256 "a87a7f0c8116b370280d865c36d489974dd7a7a5c9811d2cdb23b284d29b3d16"
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
