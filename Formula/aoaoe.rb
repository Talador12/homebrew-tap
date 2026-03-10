class Aoaoe < Formula
  desc "Autonomous supervisor for agent-of-empires sessions"
  homepage "https://github.com/Talador12/agent-of-agent-of-empires"
  url "https://registry.npmjs.org/aoaoe/-/aoaoe-0.16.0.tgz"
  sha256 "b7a71f47f3c45103ebffec52550e1cc67229653a063e17a364ed08d4578b8d49" # updated automatically by CI
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
