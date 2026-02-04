class Mindkit < Formula
  desc "Forge your AI development mind - Install and sync AI configs across Claude, Cursor, and Codex"
  homepage "https://github.com/Viniciuscarvalho/mindkit"
  url "https://registry.npmjs.org/mindkit/-/mindkit-1.1.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
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
