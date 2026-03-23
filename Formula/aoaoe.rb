class Aoaoe < Formula
  desc "Autonomous supervisor for agent-of-empires sessions"
  homepage "https://github.com/Talador12/agent-of-agent-of-empires"
  url "https://registry.npmjs.org/aoaoe/-/aoaoe-0.129.0.tgz"
  sha256 "3e4db9719f8a1f92dab168258bb6f714c54db614c337742f98b39de56152fafa" # updated automatically by CI
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
