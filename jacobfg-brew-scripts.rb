require_relative './lib/download_strategy.rb'

class JacobfgBrewScripts < Formula

  homepage "https://gist.github.com/jacobfg/727e697833ac570cdac25da98490832f"
  version "1"

  desc "Additional homebrew scripts"
  url "https://gist.github.com/jacobfg/727e697833ac570cdac25da98490832f/archive/ceddffd630019aaa33c67d4f606cabb6d23d6492.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "78ab19fff82c8b55872117247d0cf09d415c3e45e230d53e480b9bb1fb648e27"

  def install
    bin.install "brew-purge"
  end

  test do
    system "#{bin}/brew-purge"
  end

end
