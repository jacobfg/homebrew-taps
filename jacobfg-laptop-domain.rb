class JacobfgLaptopDomain < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/homebrew-taps'
  version '0.0.1'
  desc "Stub package to pull in my other packages"

  if OS.mac?
    url "file:///dev/null", :using => NullDownloadStrategy
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  # elsif OS.linux?
  #   url "file:///dev/null"
  #   sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  depends_on :arch => :x86_64

  depends_on 'jacobfg-awscreds'
  depends_on 'jacobfg-brew-scripts'
  depends_on 'jacobfg-gpg-scripts'
  depends_on 'jacobfg-python-scripts'

  def install
    # bin.install "gpg-switch-card"
  end

  test do
    # system "#{bin}/gpg-switch-card"
  end

end
