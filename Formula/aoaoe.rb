class Aoaoe < Formula
  desc "Autonomous supervisor for agent-of-empires sessions"
  homepage "https://github.com/Talador12/agent-of-agent-of-empires"
  url "https://registry.npmjs.org/aoaoe/-/aoaoe-0.90.0.tgz"
  sha256 "8b8c165e6c60742ee25e2e7bc68c1f118103d629bee7092c0a8f5d1fa9241d58" # updated automatically by CI
  license "MIT"

  depends_on "node@22"
  depends_on "tmux"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "aoaoe", shell_output("#{bin}/aoaoe --version")
  end
end
