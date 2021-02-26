require_relative './lib/download_strategy.rb'

class Awscreds < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/awscreds'
  version '0.0.3'

  desc "Wrapper for getting credentials from aws config & saml2aws"
  url "https://github.com/jacobfg/awscreds/archive/0.0.3.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "c22ab422deb152a52227bbf3e8bb449710c049fdc298e58bde0d85f0924abf44"
  head "https://github.com/jacobfg/awscreds/archive/develop.zip", :using => GitHubPrivateRepositoryDownloadStrategy

  depends_on 'python'
  depends_on 'versent/taps/saml2aws'
 
  def install
    venv = virtualenv_create(libexec, "python3")
    system libexec/"bin/pip", "install", "-v", "-r", "requirements.txt",
                              "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "awscreds"
    venv.pip_install_and_link buildpath
    # pkgshare.install "awscli/examples"
  end

  # TODO: Add your package's tests here
  test do
    system "#{bin}/aws-creds"
  end

end
