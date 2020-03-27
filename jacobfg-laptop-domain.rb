class JacobfgLaptopDomain < Formula

  homepage 'https://gist.github.com/jacobfg/48315242531a5bed49064119df8b2ee9'
  version '0.0.1'
  desc "Stub package to pull in my other packages"

  url "https://gist.github.com/jacobfg/48315242531a5bed49064119df8b2ee9/archive/631d18045b27884471f003dd84f39851dc215f73.zip"
  sha256 "97a36b5a67007f652544f6aa20dbb5cf520b350f3a27c29cb01821928216f54f"
 
  depends_on :arch => :x86_64

  depends_on 'jacobfg-awscreds'
  depends_on 'jacobfg-brew-scripts'
  depends_on 'jacobfg-gpg-scripts'
  depends_on 'jacobfg-python-scripts'

  def install
    (bin+"_laptop").write <<-EOS.undent
        #!/bin/sh

        echo Laptop dependancies via Homebrew
    EOS
  end

  # test do
  #   # system "#{bin}/gpg-switch-card"
  # end

end
