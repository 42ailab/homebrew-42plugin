class FortyTwoPlugin < Formula
  desc "AI 插件生态系统 CLI"
  homepage "https://42plugin.com"
  version "0.1.42"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.42/42plugin-darwin-arm64.tar.gz"
      sha256 "7c1d35619b428e21a2a95ce26c0e0d78fcc882c3757570483de9bbbf7fa15e70"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.42/42plugin-darwin-x64.tar.gz"
      sha256 "f914e671a400b123baab79e16e1d2480e9dc618f02ab87f8dc068eaf2cfe07fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.42/42plugin-linux-arm64.tar.gz"
      sha256 "fe978ffaa6ed7e2401f0d1cc924eeb33a7dbdba8828eadc59a4691f5c8ecfe62"
    end
    on_intel do
      url "https://github.com/42ailab/42plugin/releases/download/v0.1.42/42plugin-linux-x64.tar.gz"
      sha256 "9bef1c7bed759d3caa5d419669ad5594bc36185450f5a8442bef176d424ba7e3"
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
