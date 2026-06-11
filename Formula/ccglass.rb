class Ccglass < Formula
  desc "See what your coding agent sends to the model - logging proxy + dashboard"
  homepage "https://github.com/jianshuo/ccglass"
  url "https://registry.npmjs.org/ccglass/-/ccglass-1.1.1.tgz"
  sha256 "ec79a219b7de167db32cc2bf2436ed215c39f8219e31eadf9cf58b3a90a02b53"
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
