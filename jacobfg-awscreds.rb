class JacobfgAwscreds < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/awscreds'
  version '1'

  desc "Wrapper for getting credentials from aws config & saml2aws"
  # add :revision or tag ?
  url "git@github.com:jacobfg/awscreds.git", :using => :git
  # sha256 "1d7e241b431e7afce47e77f8843a276f652699d1fa4f93b9d8ce0076fd7b0b54"
  # head "git@github.com:jacobfg/python-scripts.git", :using => :git, :branch => "develop"

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
    system "#{bin}/awscreds"
  end

end
