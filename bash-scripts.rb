require_relative './lib/download_strategy.rb'

class BashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.9"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/894bd49124bdc19a3d39bb146a751ebbc468ba41.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "29799c766e8f8a95de7656baa307183c44bb2793355786d0d64774dcdb840f17"

  depends_on "pinentry-mac"

  def install
    bin.install "brew-backup"
    bin.install "brew-latest"
    bin.install "jsondiff"
    bin.install "github-head-sha256"
    bin.install "usb-backup"
    bin.install "kill-long-process"
  end

  test do
    system "#{bin}/brew-backup"
    system "#{bin}/brew-latest"
    system "#{bin}/jsondiff"
    system "#{bin}/github-head-sha256"
    system "#{bin}/usb-backup"
    system "#{bin}/kill-long-process"
  end

end
