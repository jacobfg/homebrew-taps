require_relative './lib/download_strategy.rb'

class JacobfgBoltbrowser < Formula

  homepage "https://github.com/br0xen/boltbrowser"
  version "1.0.0"

  desc "Browser for BoltDB files"
  url "https://git.bullercodeworks.com/brian/boltbrowser/releases/download/2.0/boltbrowser.darwin64.zip"
  sha256 "e3ac96f9a2bed08a0613d42e8faa38b0697b48ee74854a21bdb645c4094ccd5c"

  def install
    bin.install "boltbrowser.darwin64" => "boltbrowser"
  end

  test do
    system "#{bin}/boltbrowser"
  end

end
