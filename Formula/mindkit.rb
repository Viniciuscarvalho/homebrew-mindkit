class Mindkit < Formula
  desc "Forge your AI development mind - Install and sync AI configs across Claude, Cursor, and Codex"
  homepage "https://github.com/Viniciuscarvalho/mindkit"
  url "https://registry.npmjs.org/mindkit/-/mindkit-0.1.0.tgz"
  sha256 "07d5e50a5ef23ba287891f78287f37a2e67da5272f3ffc1c689be0f1f44947ae"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mindkit --version")
  end
end
