class Mindkit < Formula
  desc "Forge your AI development mind - Install and sync AI configs across Claude, Cursor, and Codex"
  homepage "https://github.com/Viniciuscarvalho/mindkit"
  url "https://github.com/Viniciuscarvalho/mindkit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dae06d553e46da9a4a1ee3bd1aa371ada675720fb9c8bdaff1cf41fcc0cd9408"
  license "MIT"

  depends_on "node"

  def install
    # Install dependencies
    system "npm", "install"
    # Build the project
    system "npm", "run", "build"

    # Install to libexec
    libexec.install Dir["*"]

    # Create wrapper script
    (bin/"mindkit").write <<~EOS
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/dist/cli/index.js" "$@"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mindkit --version")
  end
end
