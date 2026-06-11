class Cchour < Formula
  desc "See how much time you spend in AI coding tools - HTML report from session logs"
  homepage "https://github.com/jianshuo/cchour"
  url "https://github.com/jianshuo/cchour/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "14a0052223b1fa4bc807a1b3f4fb0694a7a182cdd19a97d62c7f350fb9f4eef4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cchour --version 2>&1")
  end
end
