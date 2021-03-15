require_relative './lib/download_strategy.rb'

class Awscreds < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/awscreds'
  version '0.0.6'

  desc "Wrapper for getting credentials from aws config & saml2aws"
  url "https://github.com/jacobfg/awscreds/archive/0.0.6.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "5d0d298f87ee034dfc1f5237b8895f4e3b8b5028b5dc081d354ea810d0e5ca13"
  head "https://github.com/jacobfg/awscreds/archive/develop.zip", :using => GitHubPrivateRepositoryDownloadStrategy

  depends_on 'python@3'
  depends_on 'saml2aws'
 
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
