require_relative './lib/download_strategy.rb'

class JacobfgBashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/fc695f2cbd25c0ee01cd8f6a742e0de70a92e759.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "874de1eb516f791128765c56a75949ce738aaeae7c245eb8f7264542b04f9706"

  def install
    bin.install "brew-backup"
    bin.install "brew-latest"
    bin.install "github-head-sha256"
    bin.install "login-cleanup"
  end

  test do
    system "#{bin}/brew-backup"
    system "#{bin}/brew-latest"
    system "#{bin}/github-head-sha256"
    system "#{bin}/login-cleanup"
  end

end
