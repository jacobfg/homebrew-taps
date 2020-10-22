require_relative './lib/download_strategy.rb'

class JacobfgAwscreds < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/awscreds'
  version '0.0.1'

  desc "Wrapper for getting credentials from aws config & saml2aws"
  url "https://github.com/jacobfg/awscreds/archive/0.0.1.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "6b42879e6fb9ed6f09b14395a597e4c994a841461a2762ed53c2b7b4099def9f"
  head "https://github.com/jacobfg/awscreds/archive/objectstyle.zip", :using => GitHubPrivateRepositoryDownloadStrategy

  depends_on 'python'
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
