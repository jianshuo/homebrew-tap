class Ccline < Formula
  desc "Type a thought at your zsh prompt, get an AI answer, run the command"
  homepage "https://github.com/jianshuo/ccline"
  url "https://github.com/jianshuo/ccline/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "7675d1284b7459272e5ba7e326aa5ebfd9c0497eb9a5fa72d1e81fa9ea851533"
  license "MIT"

  def install
    bin.install "ccline"
    (share/"ccline").install "ccline.zsh"
  end

  def caveats
    <<~EOS
      To enable ccline, add the following to your ~/.zshrc:

        source #{HOMEBREW_PREFIX}/share/ccline/ccline.zsh

      Then restart your terminal or run: source ~/.zshrc

      ccline requires either the 'claude' or 'codex' CLI to be installed and authenticated.
      Install Claude Code: https://claude.com/claude-code
    EOS
  end

  test do
    assert_predicate bin/"ccline", :executable?
    assert_predicate share/"ccline/ccline.zsh", :exist?
  end
end
