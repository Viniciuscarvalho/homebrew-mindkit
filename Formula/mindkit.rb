class Mindkit < Formula
  desc "Forge your AI development mind - Install and sync AI configs across Claude, Cursor, and Codex"
  homepage "https://github.com/Viniciuscarvalho/mindkit"
  url "https://registry.npmjs.org/mindkit/-/mindkit-0.1.0.tgz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "mindkit", shell_output("#{bin}/mindkit --version")
  end
end
