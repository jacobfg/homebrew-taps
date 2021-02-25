require_relative './lib/download_strategy.rb'

class BashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.18"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/e0b2633e2a40c83fb3d8056f5f02089b0d004836.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "ced441268cb5c864b3a48ad4325f65908d7215ef8b0ef8898102c2b5e44d28f4"

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
