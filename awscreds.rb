require_relative './lib/download_strategy.rb'

class Awscreds < Formula

  homepage "https://github.com/jacobfg/go-awscreds"
  version "0.2.1"

  desc "AWS Tools for managing credentials"
  url "https://api.github.com/repos/jacobfg/go-awscreds/releases/assets/39979041", :using => GitHubPrivateApiDownloadStrategy
  sha256 "64bfb30d37cca1185af09595d118cecb8c5078e50f51a6f9eb91e16fae5ab9fa"

  def install
    bin.install "awscreds"
  end

  test do
    system "#{bin}/awscreds", "--help"
  end

end
