class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.4"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.4/42plugin-darwin-arm64.tar.gz"
      sha256 "c8774bc4407b0c9dce09ee8e0017f645f3f36496ed2367638cab7b30af2032f5"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.4/42plugin-darwin-x64.tar.gz"
      sha256 "106c310384cf03f39b5a95e865f09b2ccc6630b3eb4641fb458fcdeabd246fef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.4/42plugin-linux-arm64.tar.gz"
      sha256 "af1c6c824d6e1dde8ec83904e8e9ee38910a1890890dfddbee917e4c972f1a27"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.4/42plugin-linux-x64.tar.gz"
      sha256 "67d40d31cbfb06ec6d6694ebb245a9857eb7dba5b089fe27ae4eb345f03cd2db"
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
