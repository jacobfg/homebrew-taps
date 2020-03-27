require_relative './lib/download_strategy.rb'

class JacobfgLaptopDomain < Formula

  homepage 'https://github.com/jacobfg/'
  version '0.0.1'
  desc "Stub package to pull in my other packages"

  url "empty", :using => NullDownloadStrategy

  depends_on 'jacobfg-awscreds'
  depends_on 'jacobfg-brew-scripts'
  depends_on 'jacobfg-gpg-scripts'
  depends_on 'jacobfg-python-scripts'

  def install
    (bin+"_laptop").write <<~EOS
        #!/bin/sh

        echo Laptop dependancies via Homebrew
    EOS
  end

end
