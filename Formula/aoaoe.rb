class Aoaoe < Formula
  desc "Autonomous supervisor for agent-of-empires sessions"
  homepage "https://github.com/Talador12/agent-of-agent-of-empires"
  url "https://registry.npmjs.org/aoaoe/-/aoaoe-0.52.0.tgz"
  sha256 "842392c0c8cc64943647ecada3af322d2e6413298090ffbf4f7c150b95d57307" # updated automatically by CI
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
