require_relative './lib/download_strategy.rb'

class Awscreds < Formula

  homepage "https://github.com/jacobfg/go-awscreds"
  version "0.3.0"

  desc "AWS Tools for managing credentials"
  url "https://api.github.com/repos/jacobfg/go-awscreds/releases/assets/40211751", :using => GitHubPrivateApiDownloadStrategy
  sha256 "7bde0f72fb23739280a9a3dacdba802dc24ddf5faa2c5bd30a4a8f07a4ba1e7e"

  depends_on 'zsh-completions'

  def install
    bin.install "awscreds"
    mkdir_p "#{share}/zsh/site-functions"
    oldpath = "#{prefix}/bin"
    ENV['PATH'] = "#{prefix}/bin"
    output = %x[awscreds completion zsh]
    File.write("#{share}/zsh/site-functions/_awscreds", output)
    ENV['PATH'] = oldpath
  end

  test do
    system "#{bin}/awscreds", "--help"
  end

end
