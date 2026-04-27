class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.4.14"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.14/42plugin-darwin-arm64.tar.gz"
      sha256 "bad8eac9474ae3f798498401ec98c02a92c34dffc541185f4808e02ebb2f8b15"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.14/42plugin-darwin-x64.tar.gz"
      sha256 "80a0981f90185e8334472e0e0d77e2535b4ea4e374cd31bffc268c9197fbca85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.14/42plugin-linux-arm64.tar.gz"
      sha256 "bbf2f855d27617a0840fa8e3a0aa1bd89100e4f06a11061c237ed8cb9adf43de"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.4.14/42plugin-linux-x64.tar.gz"
      sha256 "850c3e485fa195b427179a8753499635642a794a65820d29026e463037c4aabb"
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
