require_relative './lib/download_strategy.rb'

class JacobfgBashScripts < Formula

  homepage "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45"
  version "1.0.3"

  desc "Bash scripts"
  url "https://gist.github.com/jacobfg/5e507760cde9a1c7a21048f47db3af45/archive/9442e9fecb024d5e42a7a0f8afbc56076ed8584f.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "94f3d92b73fddcbe09f15e9800e916b90e22cf86b3fa26b7bb8471bccc014b39"

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
