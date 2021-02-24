require_relative './lib/download_strategy.rb'

class BashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.17"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/2ec8b3dc95af2e67ee3d9bb00eba784a43bee65d.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "3369d087d64d99a9a20365657a662d7a944b96535c6fe5144bfe73db17d28f11"

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
    bin.install "pinentry-auto"
  end

  test do
    system "#{bin}/brew-backup"
    system "#{bin}/brew-latest"
    system "#{bin}/jsondiff"
    system "#{bin}/github-head-sha256"
    system "#{bin}/usb-backup"
    system "#{bin}/kill-long-process"
    system "#{bin}/globalprotect"
    system "#{bin}/pinentry-auto"
  end

end
