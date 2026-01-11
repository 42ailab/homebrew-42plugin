class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.2.10"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.10/42plugin-darwin-arm64.tar.gz"
      sha256 "0e588cf7410d2c058a7cb135dda1f0dbbe2ff0931656995e82e046ad6b71a887"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.10/42plugin-darwin-x64.tar.gz"
      sha256 "b04b3fde2724c04bc8c68b5e6c96d601aca6e8529829b47bdd86fa0dffb4f602"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.10/42plugin-linux-arm64.tar.gz"
      sha256 "373a00e2b72fced03995c10b8cdc197af9fcbe5648fd81da540f93cb5a74a71d"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.2.10/42plugin-linux-x64.tar.gz"
      sha256 "d21f3cf9cb6ceba24bb627242142c98d8cd7ad15d014aa562ccb46843b1da712"
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
