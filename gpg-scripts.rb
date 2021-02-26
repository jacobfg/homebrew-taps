require_relative './lib/download_strategy.rb'

class GpgScripts < Formula

  homepage "https://gist.github.com/jacobfg/2b7c86fbdbfdbbca271af9d295459433"
  version "3"

  desc "Yubikey GPG/SSH homebrew scripts"
  url "https://gist.github.com/jacobfg/2b7c86fbdbfdbbca271af9d295459433/archive/a3b9f1886eacafcbef126a68d7825c3f46de2e6f.zip"
  # , :using => GitHubPrivateGistDownloadStrategy
  sha256 "8cb143a8dfba27de5a98fddc1f4e244caffafd264dd1d6b8d18ef542df9fbac0"

  def install
    bin.install "gpg-switch-card"
  end

  test do
    system "#{bin}/gpg-switch-card"
  end

end
