require_relative './lib/download_strategy.rb'

class BashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.20"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/74f88d81889274cc5f21f9618a54d3001af0929b.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "0de5ac9f310edaec06cba7589e5d4aa202796ea338f2d32e805e4f63795bdbfc"

  depends_on "pinentry-mac"
  depends_on "terminal-notifier"

  def install
    bin.install "brew-latest"
    bin.install "jsondiff"
    bin.install "github-head-sha256"
    bin.install "usb-backup"
  end

  test do
    system "#{bin}/brew-latest"
    system "#{bin}/jsondiff"
    system "#{bin}/github-head-sha256"
    system "#{bin}/usb-backup"
  end

end
