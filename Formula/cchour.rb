class Cchour < Formula
  desc "See how much time you spend in AI coding tools - HTML report from session logs"
  homepage "https://github.com/jianshuo/cchour"
  url "https://github.com/jianshuo/cchour/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "63f9ff83f5958d16d3864031cb12d9cde5ab16dd2e7e2a7cda2b141d5acd74a6"
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
