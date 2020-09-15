require_relative './lib/download_strategy.rb'

class JacobfgBashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.4"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/09ca6fc9a1918657c47c02eec35a8468ec691116.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "39c63f37ba6ed150de754d20debd014b8bc9026481be1bbf8f377c561ce776ea"

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
