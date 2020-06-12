require_relative './lib/download_strategy.rb'

class JacobfgPythonScripts < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/python-scripts'
  version '0.0.2'

  desc "Python-based, generic static web site generator aimed at developers"
  url "https://github.com/jacobfg/python-scripts/archive/0.0.2.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "25f9a24d7ba40425df991f3b04a94cef28b4d8af46889ab3216a560ac7a5880e"
  head "https://github.com/jacobfg/python-scripts/archive/master.zip", :using => GitHubPrivateRepositoryDownloadStrategy

  # TODO: If you're submitting an existing package, make sure you include your
  #       bottle block here.

  depends_on 'python'
  depends_on 'saml2aws'
 
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
    system "#{bin}/totp"
    # assert_match "topics", shell_output("#{bin}/aws help")
  end

  # def caveats; <<~EOS
  #   The "examples" directory has been installed to:
  #     #{HOMEBREW_PREFIX}/share/awscli/examples
  # EOS
  # end

end
