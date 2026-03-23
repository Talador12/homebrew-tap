class Aoaoe < Formula
  desc "Autonomous supervisor for agent-of-empires sessions"
  homepage "https://github.com/Talador12/agent-of-agent-of-empires"
  url "https://registry.npmjs.org/aoaoe/-/aoaoe-0.146.0.tgz"
  sha256 "d6a560aba77eac8b3219a6167016fe10001f075542bbceccd96ce9029928df9e" # updated automatically by CI
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
