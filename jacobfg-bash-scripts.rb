require_relative './lib/download_strategy.rb'

class JacobfgBashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.2"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/90bc6df558dcdef30b1fa2b79d13400d94aa32be.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "0a9d55f2bc4a318d3fde985520fa0a1c77c3fee6aaa58b179c3ebeddd9e60d8e"

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
