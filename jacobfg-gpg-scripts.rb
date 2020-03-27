require_relative './lib/download_strategy.rb'

class JacobfgGpgScripts < Formula

  homepage "https://gist.github.com/jacobfg/2b7c86fbdbfdbbca271af9d295459433"
  version "1"

  desc "Yubikey GPG/SSH homebrew scripts"
  url "https://gist.github.com/jacobfg/2b7c86fbdbfdbbca271af9d295459433/archive/147fb8b03bbcccf0ce3bfae9e24b8900a3da29de.zip"
  # , :using => GitHubPrivateGistDownloadStrategy
  sha256 "bbfb06d79a1701321cd485ff211aaa852d50bbe49b58132a5d14fcc3cf00e943"

  def install
    bin.install "gpg-switch-card"
  end

  test do
    system "#{bin}/gpg-switch-card"
  end

end
