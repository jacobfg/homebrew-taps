class PayRespects < Formula
  desc "Command suggestions, command-not-found and thefuck replacement in Rust"
  homepage "https://github.com/iffse/pay-respects"
  version "0.8.8"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/iffse/pay-respects/releases/download/v#{version}/pay-respects-#{version}-aarch64-apple-darwin.tar.zst"
      sha256 "e834e928dcaf9cd72a99478bb61e0630ba76e32c7b228eb3a7be9c5f404cd548"
    end
    on_intel do
      url "https://github.com/iffse/pay-respects/releases/download/v#{version}/pay-respects-#{version}-x86_64-apple-darwin.tar.zst"
      sha256 "64c30e1a62605279abf219193c53bf251687ea419a0c99d2e15ae8b5b6a58587"
    end
  end

  def install
    bin.install "pay-respects"
    bin.install Dir["_pay-respects-*"]
    man1.install "man/pay-respects.1"
    man5.install "man/pay-respects.5"
    man5.install "man/pay-respects-modules.5"
    man5.install "man/pay-respects-rules.5"
  end

  def caveats
    <<~EOS
      To enable the `f` shell alias, add to your ~/.zshrc:
        eval "$(pay-respects zsh --alias)"

      Replaces `thefuck` with a much faster Rust implementation.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pay-respects --version")
  end
end
