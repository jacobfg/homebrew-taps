class JacobfgPythonScripts < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/python-scripts'
  version '9'

  desc "Python-based, generic static web site generator aimed at developers"
  # add :revision or tag ?
  url "git@github.com:jacobfg/python-scripts.git", :using => :git
  # sha256 "1d7e241b431e7afce47e77f8843a276f652699d1fa4f93b9d8ce0076fd7b0b54"
  # head "git@github.com:jacobfg/python-scripts.git", :using => :git, :branch => "develop"

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

  # test do
  #   assert_match "topics", shell_output("#{bin}/aws help")
  # end
end
