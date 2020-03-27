require_relative './lib/download_strategy.rb'

class JacobfgLaptopDomain < Formula

  homepage 'https://github.com/jacobfg/'
  version '0.0.1'
  desc "Stub package to pull in my other packages"

  url "empty", :using => NullDownloadStrategy

  depends_on macos: '>= 10.14'

  depends_on forumla: 'jacobfg-awscreds'
  depends_on forumla: 'jacobfg-brew-scripts'
  depends_on forumla: 'jacobfg-gpg-scripts'
  depends_on forumla: 'jacobfg-python-scripts'

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
