class Mindkit < Formula
  desc "Forge your AI development mind - Install and sync AI configs across Claude, Cursor, and Codex"
  homepage "https://github.com/Viniciuscarvalho/mindkit"
  url "https://registry.npmjs.org/mindkit/-/mindkit-1.0.2.tgz"
  sha256 "4e0c3ec527f6443688c17fe9429c4766490cd56756eca803da9f48eaad3f1337"
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
