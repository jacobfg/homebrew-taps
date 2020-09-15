require_relative './lib/download_strategy.rb'

class JacobfgBashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.5"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/e39756cce834ac582c0d1f054f32d0ffcbdc0b42.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "d5bbab49a19187cf68d59d1aa752a22764856755b7c203c641f02cee27280406"

  def install
    bin.install "brew-backup"
    bin.install "brew-latest"
    bin.install "github-head-sha256"
    bin.install "login-cleanup"
    bin.install "usb-backup"
  end

  test do
    system "#{bin}/brew-backup"
    system "#{bin}/brew-latest"
    system "#{bin}/github-head-sha256"
    system "#{bin}/login-cleanup"
    system "#{bin}/usb-backup"
  end

end
