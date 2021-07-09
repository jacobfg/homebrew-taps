require_relative './lib/download_strategy.rb'

class Awscreds < Formula

  homepage "https://github.com/jacobfg/go-awscreds"
  version "0.2.3"

  desc "AWS Tools for managing credentials"
  url "https://api.github.com/repos/jacobfg/go-awscreds/releases/assets/39991251", :using => GitHubPrivateApiDownloadStrategy
  sha256 "212675a7c435f0d989a79f9f097ce9e32ed943d64753c1bb8804175fcefa4bda"

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
