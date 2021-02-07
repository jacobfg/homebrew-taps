require_relative './lib/download_strategy.rb'

class BrewScripts < Formula

  homepage "https://gist.github.com/jacobfg/727e697833ac570cdac25da98490832f"
  version "3"

  desc "Additional homebrew scripts"
  url "https://gist.github.com/jacobfg/727e697833ac570cdac25da98490832f/archive/ed737b29ebc6b4d61da14caa59f1912913e553f7.zip"
  # , :using => GitHubPrivateGistDownloadStrategy
  sha256 "867e56cf2891b29db15cee9247e363eb7e6cd12ea55b33f4483701a33b7c7a8f"

  def install
    bin.install "brew-purge"
  end

  test do
    system "#{bin}/brew-purge"
  end

end
