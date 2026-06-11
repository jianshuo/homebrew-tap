class Ccglass < Formula
  desc "See what your coding agent sends to the model - logging proxy + dashboard"
  homepage "https://github.com/jianshuo/ccglass"
  url "https://registry.npmjs.org/ccglass/-/ccglass-1.1.2.tgz"
  sha256 "f810434ac03265880bfcf769040af8ea31eff56280258346723eaa93bb7b0990"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "ccglass", shell_output("#{bin}/ccglass --help")
  end
end
