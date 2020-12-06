require_relative './lib/download_strategy.rb'

class JacobfgBashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.7"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/31c81859da19bdb34277db4d4ea7eaaac46ee09e.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "3ec79ce8515be7d411566f1c526c7f81608fa2167524653160135c686cb3de53"

  def install
    bin.install "brew-backup"
    bin.install "brew-latest"
    bin.install "jsondiff"
    bin.install "github-head-sha256"
    bin.install "login-cleanup"
    bin.install "usb-backup"
  end

  test do
    system "#{bin}/brew-backup"
    system "#{bin}/brew-latest"
    system "#{bin}/jsondiff"
    system "#{bin}/github-head-sha256"
    system "#{bin}/login-cleanup"
    system "#{bin}/usb-backup"
  end

end
