class SsmTool < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/elpy1/ssm-tool'
  version '0.0.2'

  desc "AWS SSM and SSH toolkit. Access private AWS instances easily with no need to manually manage SSH keys on remote servers."
  url "https://github.com/elpy1/ssm-tool/archive/0b8afee6e128f14652029862590465bd11b12e2b.zip", :using => CurlDownloadStrategy
  sha256 "f2d04dcf6a9c04c50537a0159e5390056ad7b55f38be5ab34431e87f59cf39a6"
  head "https://github.com/elpy1/ssm-tool/scripts/archive/master.zip", :using => CurlDownloadStrategy
 
  # fails on python 12
  depends_on "python@3.11"

  def python3
    "python3.11"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/e9/98/5991f792f96e475da864cc3782e2cdb21d92b2bc943522eaf886539c1d48/boto3-1.13.6.tar.gz"
    sha256 "f1ac7eb23ff8b1d7e314123668ff1e93b874dd396ac5424adc443d68bd8a6fbf"
  end
  
  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/e0/a1/36203205f77ccf98f3c6cf17cf068c972e6458d7e58509ca66da949ca347/prettytable-0.7.2.tar.gz"
    sha256 "2d5460dc9db74a32bcc8f9f67de68b2c4f4d2f01fa3bd518764c69156d9cacd9"
  end
  
  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end
 
  def install
    File.open(File.join(buildpath, 'setup.py'), 'w') do |f|
      f << <<~HEREDOC
      import os
      from setuptools import setup, find_packages
      
      with open('requirements.txt') as fh:
          requirements = fh.read().splitlines()

      setup(
          name="ssm-tool",
          version="0.0.2",
          author="elpy",
          author_email="elpy@opsdevops.dev",
          description="AWS SSM and SSH toolkit. Access private AWS instances easily with no need to manually manage SSH keys on remote servers",
          long_description="AWS SSM and SSH toolkit. Access private AWS instances easily with no need to manually manage SSH keys on remote servers.",
          long_description_content_type="text/markdown",
          url="https://github.com/elpy1/ssm-tool",
          packages=find_packages(),
          classifiers=[
              "Programming Language :: Python :: 3",
              "License :: OSI Approved :: MIT License",
              "Operating System :: OS Independent",
          ],
          python_requires='>=3.11',
          # install_requires=requirements,
          scripts=[
              "ssm-tool",
          ]
      )
      HEREDOC
    end

    # Create a virtualenv in `libexec`. If your app needs Python 3, make sure that
    # `depends_on "python"` is declared, and use `virtualenv_create(libexec, "python3")`.
    venv = virtualenv_create(libexec)
    # Install all of the resources declared on the formula into the virtualenv.
    venv.pip_install resources
    # `pip_install_and_link` takes a look at the virtualenv's bin directory
    # before and after installing its argument. New scripts will be symlinked
    # into `bin`. `pip_install_and_link buildpath` will install the package
    # that the formula points to, because buildpath is the location where the
    # formula's tarball was unpacked.
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/ssm-tool"
  end

end
