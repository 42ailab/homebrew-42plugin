class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.21"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.21/42plugin-darwin-arm64.tar.gz"
      sha256 "ec08c413d89428f9f7d4a38cd38da1c87bda947be7a48eeaea592ad0032dca29"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.21/42plugin-darwin-x64.tar.gz"
      sha256 "c6877e80dc9b02275fbc53aeea2eaaaeb9af76ed75a3eda6f7b198f1bd551bb9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.21/42plugin-linux-arm64.tar.gz"
      sha256 "04f0e0a495450df69f9dbc56e78af384d2cbf73b6050fe70d2b327d376e3d563"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.21/42plugin-linux-x64.tar.gz"
      sha256 "8b67abc29519aa2fef4d9d54c3ee9e364792c8318d168f92c7bacafaaae9a62a"
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
