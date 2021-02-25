require_relative './lib/download_strategy.rb'

class BashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.18"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/401d025ad4a2b4e66df8ea372a81cd008a93e54f.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "06ec1fe794314e4ae2eceb60610d5ab0078d531e2367adff1a654a9b6b0f5a4b"

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
    bin.install "macbook-vnc"
  end

  test do
    system "#{bin}/brew-backup"
    system "#{bin}/brew-latest"
    system "#{bin}/jsondiff"
    system "#{bin}/github-head-sha256"
    system "#{bin}/usb-backup"
    system "#{bin}/kill-long-process"
    system "#{bin}/globalprotect"
    system "#{bin}/macbook-vnc"
  end

end
