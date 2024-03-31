require_relative './lib/download_strategy.rb'

class PythonScripts < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/python-scripts'
  version '0.0.20'

  desc "Python-based, generic static web site generator aimed at developers"
  url "https://github.com/jacobfg/python-scripts/archive/0.0.20.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "72aded9f4bf9915e88294d8085ebc4a6687df291b8624c2d07c953e8996555e1"
  head "https://github.com/jacobfg/python-scripts/archive/main.zip", :using => GitHubPrivateRepositoryDownloadStrategy

  # TODO: If you're submitting an existing package, make sure you include your
  #       bottle block here.

  depends_on 'python@3.12'
 
  def install
    virtualenv_install_with_resources
    # HACK - need to define in resources section
    system libexec/"bin/pip", "install", "-v", "-r", "requirements.txt", "--ignore-installed", buildpath
  end

  # TODO: Add your package's tests here
  # not checking for all bin scripts
  test do
    system "#{bin}/httpdecode"
    system "#{bin}/httpencode"
    # assert_match "topics", shell_output("#{bin}/aws help")
  end

end
