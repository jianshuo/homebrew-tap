class Ccline < Formula
  desc "Type a thought at your zsh prompt, get an AI answer, run the command"
  homepage "https://github.com/jianshuo/ccline"
  url "https://github.com/jianshuo/ccline/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "30fef2deae501b6507cd67c16257aea30b8df8f3ba953f0e8443491c170a2fba"
  license "MIT"

  def install
    bin.install "ccline"
    (share/"ccline").install "ccline.zsh"
    (share/"fish/vendor_conf.d").install "ccline.fish"
  end

  def caveats
    <<~EOS
      To enable ccline, add the following to your ~/.zshrc:

        source #{HOMEBREW_PREFIX}/share/ccline/ccline.zsh

      Then restart your terminal or run: source ~/.zshrc

      Fish users need no setup: the widget is auto-loaded from
      #{HOMEBREW_PREFIX}/share/fish/vendor_conf.d/ccline.fish

      ccline requires either the 'claude' or 'codex' CLI to be installed and authenticated.
      Install Claude Code: https://claude.com/claude-code
    EOS
  end

  test do
    assert_predicate bin/"ccline", :executable?
    assert_predicate share/"ccline/ccline.zsh", :exist?
  end
end
