class Consolemd < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/kneufeld/consolemd'
  version '0.5.1'

  desc "render markdown to the console (not just highlight it)"
  url "https://github.com/kneufeld/consolemd/archive/v0.5.1.zip"
  sha256 "33698591adec535ec53822a0cbe8f8fa01306632907120220e3e8c61eccf1a82"
 
  depends_on 'python'
 
  def install
    venv = virtualenv_create(libexec, "python3")
    system libexec/"bin/pip", "install", "-v",
                              "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "consolemd"
    venv.pip_install_and_link buildpath
    # pkgshare.install "awscli/examples"
  end

  # TODO: Add your package's tests here
  test do
    system "#{bin}/consolemd"
    system "#{bin}/cmark"
  end

end
