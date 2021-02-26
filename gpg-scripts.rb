require_relative './lib/download_strategy.rb'

class GpgScripts < Formula

  homepage "https://gist.github.com/jacobfg/2b7c86fbdbfdbbca271af9d295459433"
  version "2"

  desc "Yubikey GPG/SSH homebrew scripts"
  url "https://gist.github.com/jacobfg/2b7c86fbdbfdbbca271af9d295459433/archive/9f9102563614861c570cc5602fe1b1387ab6b3c7.zip"
  # , :using => GitHubPrivateGistDownloadStrategy
  sha256 "363f72f07c1e902504f6c0e46e707f6b4e7340d5364831dcaa92a0228ae09234"

  def install
    bin.install "gpg-switch-card"
  end

  test do
    system "#{bin}/gpg-switch-card"
  end

end
