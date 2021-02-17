require_relative './lib/download_strategy.rb'

class BashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.14"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/302f031a72f6dbfa4eeade0ff7a91b904c346935.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "cffe6ac5326f03aeb35fe4035f9b81ed4175f187b9124371a6025532b9a0193a"

  depends_on "pinentry-mac"
  depends_on "terminal-notifier"

  def install
    bin.install "brew-backup"
    bin.install "brew-latest"
    bin.install "jsondiff"
    bin.install "github-head-sha256"
    bin.install "usb-backup"
    bin.install "kill-long-process"
    bin.install "globalprotect"
  end

  test do
    system "#{bin}/brew-backup"
    system "#{bin}/brew-latest"
    system "#{bin}/jsondiff"
    system "#{bin}/github-head-sha256"
    system "#{bin}/usb-backup"
    system "#{bin}/kill-long-process"
    system "#{bin}/globalprotect"
  end

end
