class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.17"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.17/42plugin-darwin-arm64.tar.gz"
      sha256 "c5a95932c7bd20975a85454c8108322b107e25f94afefee7d2ba2cbf393f4031"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.17/42plugin-darwin-x64.tar.gz"
      sha256 "1128a9301a6a6fa887c7cd66c677adc9d1808f4f102d8bbb1baafb06c72683c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.17/42plugin-linux-arm64.tar.gz"
      sha256 "108a9fa9e74e29960e33944e66e13336389dd06b62762b1c510cf312d026e19f"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.17/42plugin-linux-x64.tar.gz"
      sha256 "00e79aae1fc572b52ed0e4be1c3ab26374ae6dbd18da5808697dccbbf450c878"
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
