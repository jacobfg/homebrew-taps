require_relative './lib/download_strategy.rb'

class JacobfgBrewScripts < Formula

  homepage "https://gist.github.com/jacobfg/727e697833ac570cdac25da98490832f"
  version "2"

  desc "Additional homebrew scripts"
  url "https://gist.github.com/jacobfg/727e697833ac570cdac25da98490832f/archive/9280aa6ae799ae7d336e5ea2fc49d5d8cf4c68da.zip"
  # , :using => GitHubPrivateGistDownloadStrategy
  sha256 "52f12546ea7f7823167f8a573de2c8420152219c5b797f3ac8f5234213bd807c"

  def install
    bin.install "brew-purge"
  end

  test do
    system "#{bin}/brew-purge"
  end

end
