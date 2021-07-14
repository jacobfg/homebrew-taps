require_relative './lib/download_strategy.rb'

class PythonScripts < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/python-scripts'
  version '0.0.16'

  desc "Python-based, generic static web site generator aimed at developers"
  url "https://github.com/jacobfg/python-scripts/archive/0.0.16.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "da45e2a828c0c448d2439da82773112950313320da700968b78ee5add6926c44"
  head "https://github.com/jacobfg/python-scripts/archive/main.zip", :using => GitHubPrivateRepositoryDownloadStrategy

  # TODO: If you're submitting an existing package, make sure you include your
  #       bottle block here.

  depends_on 'python@3'
 
  def install
    venv = virtualenv_create(libexec, "python3")
    system libexec/"bin/pip", "install", "-v", "-r", "requirements.txt",
                              "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "python-scripts"
    venv.pip_install_and_link buildpath
    # pkgshare.install "awscli/examples"
  end

  # TODO: Add your package's tests here
  # not checking for all bin scripts
  test do
    system "#{bin}/httpdecode"
    system "#{bin}/httpencode"
    # assert_match "topics", shell_output("#{bin}/aws help")
  end

end
