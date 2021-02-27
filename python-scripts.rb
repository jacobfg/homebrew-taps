require_relative './lib/download_strategy.rb'

class PythonScripts < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/python-scripts'
  version '0.0.14'

  desc "Python-based, generic static web site generator aimed at developers"
  url "https://github.com/jacobfg/python-scripts/archive/0.0.14.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "7e77b2b483c21ffc9ba7c82e16c9ca2f6d85d344fe6b4af27f092290aeac3be3"
  head "https://github.com/jacobfg/python-scripts/archive/main.zip", :using => GitHubPrivateRepositoryDownloadStrategy

  # TODO: If you're submitting an existing package, make sure you include your
  #       bottle block here.

  depends_on 'python'
 
  def install
    venv = virtualenv_create(libexec, "python3")
    system libexec/"bin/pip", "install", "-v", "-r", "requirements.txt",
                              "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "python-scripts"
    venv.pip_install_and_link buildpath
    # pkgshare.install "awscli/examples"
  end

  # TODO: Add your package's tests here
  test do
    system "#{bin}/cert-details"
    system "#{bin}/httpdecode"
    system "#{bin}/httpencode"
    system "#{bin}/ini-print"
    system "#{bin}/totp"
    # assert_match "topics", shell_output("#{bin}/aws help")
  end

end
