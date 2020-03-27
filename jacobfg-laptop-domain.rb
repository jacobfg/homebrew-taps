require_relative './lib/download_strategy.rb'

class JacobfgLaptopDomain < Formula

  homepage 'https://gist.github.com/jacobfg/48315242531a5bed49064119df8b2ee9'
  version '0.0.1'
  desc "Stub package to pull in my other packages"

  url "empty", :using => NullDownloadStrategy
  # sha256 "84ff92691f909a05b224e1c56abb4864f01b4f8e3c854e4bb4c7baf1d3f6d652"

  # sha256 "7bbe1be53b7942f0baac7dcdae081b5326d5251926320a7ae217a8dea7157388"
 
  depends_on :arch => :x86_64

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

  # test do
  #   # system "#{bin}/gpg-switch-card"
  # end

end
