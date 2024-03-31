require_relative './lib/download_strategy.rb'

class PythonScripts < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/python-scripts'
  version '0.0.20'

  depends_on "python@3.11"
  depends_on "cryptography"
 
  def python3
    "python3.11"
  end

  desc "Python-based, generic static web site generator aimed at developers"
  url "https://github.com/jacobfg/python-scripts/archive/refs/tags/0.0.20.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "2234655923c91738441d04cb8792eefe165ccc5d9b786a05b7ccdc7ac528d3ae"
  head "https://github.com/jacobfg/python-scripts/archive/main.zip", :using => GitHubPrivateRepositoryDownloadStrategy

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/4d/5b/dc575711b6b8f2f866131a40d053e30e962e633b332acf7cd2c24843d83d/setuptools-69.2.0.tar.gz"
    sha256 "0ff4183f8f42cd8fa3acea16c45205521a4ef28f73c6391d8a25e92893134f2e"
  end

  # resource "applescript" do
  #   url "https://files.pythonhosted.org/packages/ae/f2/90f877ad4f50d1b577b52f06ffb1b8b9bbc9add59c60db2c7331536ee02d/applescript-2021.2.9.tar.gz"
  #   sha256 "e39542c0411d82c3c860af23f5a54c121279a409e5cf55acfa7f881ea9798854"
  # end

  # resource "cffi" do
  #   url "https://files.pythonhosted.org/packages/68/ce/95b0bae7968c65473e1298efb042e10cafc7bafc14d9e4f154008241c91d/cffi-1.16.0.tar.gz"
  #   sha256 "bcb3ef43e58665bbda2fb198698fcae6776483e0c4a631aa5647806c25e02cc0"
  # end

  # resource "configparser" do
  #   url "https://files.pythonhosted.org/packages/82/97/930be4777f6b08fc7c248d70c2ea8dfb6a75ab4409f89abc47d6cab37d39/configparser-6.0.1.tar.gz"
  #   sha256 "db45513e971e509496b150be31bd67b0e14ab20b78a383b677e4b158e2c682d8"
  # end

  # resource "cryptography" do
  #   url "https://files.pythonhosted.org/packages/13/9e/a55763a32d340d7b06d045753c186b690e7d88780cafce5f88cb931536be/cryptography-42.0.5.tar.gz"
  #   sha256 "6fe07eec95dfd477eb9530aef5bead34fec819b3aaf6c5bd6d20565da607bfe1"
  # end

  # resource "launchd" do
  #   url "https://files.pythonhosted.org/packages/3d/7b/403c1d131aed62973512f343a84103cf4beb938d343ae54435e84f326350/launchd-0.3.0.tar.gz"
  #   sha256 "e41c4e52a7573e25ae0dfd716ee954b010f9f08918d616b7633f729cd114ca99"
  # end

  # resource "pycparser" do
  #   url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
  #   sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  # end

  # resource "pyobjc-core" do
  #   url "https://files.pythonhosted.org/packages/24/ac/61c58e65780c6ba0523997d236fac99e38e5ddfabfd5b500409f8239a257/pyobjc-core-10.2.tar.gz"
  #   sha256 "0153206e15d0e0d7abd53ee8a7fbaf5606602a032e177a028fc8589516a8771c"
  # end

  # resource "pyobjc-framework-Cocoa" do
  #   url "https://files.pythonhosted.org/packages/b0/c0/7eb30628e1a60c8b700f0b15280417c754eda9f186d05d47f4cac6f4e1a7/pyobjc-framework-Cocoa-10.2.tar.gz"
  #   sha256 "6383141379636b13855dca1b39c032752862b829f93a49d7ddb35046abfdc035"
  # end

  # resource "pyobjc-framework-ServiceManagement" do
  #   url "https://files.pythonhosted.org/packages/0f/8a/f293d1cebe3e0b19d499836f8751344a0a2ddd582368661ee0459bda813c/pyobjc-framework-ServiceManagement-10.2.tar.gz"
  #   sha256 "62413cd911932cc16262710a3853061fdae341ed95e1aa0426b4ff0011d18c0c"
  # end

  # resource "pyOpenSSL" do
  #   url "https://files.pythonhosted.org/packages/91/a8/cbeec652549e30103b9e6147ad433405fdd18807ac2d54e6dbb73184d8a1/pyOpenSSL-24.1.0.tar.gz"
  #   sha256 "cabed4bfaa5df9f1a16c0ef64a0cb65318b5cd077a7eda7d6970131ca2f41a6f"
  # end

  # resource "pyotp" do
  #   url "https://files.pythonhosted.org/packages/f3/b2/1d5994ba2acde054a443bd5e2d384175449c7d2b6d1a0614dbca3a63abfc/pyotp-2.9.0.tar.gz"
  #   sha256 "346b6642e0dbdde3b4ff5a930b664ca82abfa116356ed48cc42c7d6590d36f63"
  # end

  # resource "python-gnupg" do
  #   url "https://files.pythonhosted.org/packages/b1/5d/4425390ad81d22b330a1b0df204c4d39fb3cb7c39e081d51e9f7426ce716/python-gnupg-0.5.2.tar.gz"
  #   sha256 "01d8013931c9fa3f45824bbea7054c03d6e11f258a72e7e086e168dbcb91854c"
  # end

  # resource "PyYAML" do
  #   url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
  #   sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  # end

  # resource "six" do
  #   url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
  #   sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  # end

  def install
    File.open(File.join(buildpath, 'setup.py'), 'w') do |f|
      f << <<~HEREDOC
      import os
      from setuptools import setup, find_packages
      
      with open('requirements.txt') as fh:
          requirements = fh.read().splitlines()
      
      with open("README.md", "r") as fh:
          long_description = fh.read()
      
      setup(
          name="python-scripts",
          version="0.0.20",
          author="Jacob Fleming-Gale",
          author_email="10949267+jacobfg@users.noreply.github.com",
          description="Random python scripts",
          long_description=long_description,
          long_description_content_type="text/markdown",
          url="https://github.com/jacobfg/python-scripts",
          packages=find_packages(),
          classifiers=[
              "Programming Language :: Python :: 3",
              "License :: OSI Approved :: MIT License",
              "Operating System :: OS Independent",
          ],
          python_requires='>=3.11',
          # install_requires=requirements,
          scripts=[
              "bin/cert-details",
              "bin/httpdecode",
              "bin/httpencode",
              "bin/totp",
              "bin/ini-print",
              "bin/osx-app-setup",
              "bin/okta-gpg-creds",
          ]
      )
      HEREDOC
    end

    # Create a virtualenv in `libexec`. If your app needs Python 3, make sure that
    # `depends_on "python"` is declared, and use `virtualenv_create(libexec, "python3")`.
    venv = virtualenv_create(libexec)
    # Install all of the resources declared on the formula into the virtualenv.
    venv.pip_install resources

    # HACK - resources above don't compile and can't find a way to use whell (whl)
    system libexec/"bin/python", "-m", "pip", "install", "-v", "-r", "requirements.txt", buildpath
    system libexec/"bin/python", "-m", "pip", "uninstall", "-y", "python-scripts"

    # `pip_install_and_link` takes a look at the virtualenv's bin directory
    # before and after installing its argument. New scripts will be symlinked
    # into `bin`. `pip_install_and_link buildpath` will install the package
    # that the formula points to, because buildpath is the location where the
    # formula's tarball was unpacked.
    venv.pip_install_and_link buildpath
  end

  # TODO: Add your package's tests here
  # not checking for all bin scripts
  test do
    system "#{bin}/httpdecode"
    system "#{bin}/httpencode"
    # assert_match "topics", shell_output("#{bin}/aws help")
  end

end
