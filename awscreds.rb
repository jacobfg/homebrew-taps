require_relative './lib/download_strategy.rb'

class Awscreds < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/awscreds'
  version '0.0.8'

  desc "Wrapper for getting credentials from aws config & saml2aws"
  url "https://github.com/jacobfg/awscreds/archive/0.0.8.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "5a47012a76f4ceb026d6d22c66f14150fe4f4a0db845e28ba3d3eccadcb7b36a"
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
