require_relative './lib/download_strategy.rb'

class PythonScripts < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/jacobfg/python-scripts'
  version '0.0.22'

  depends_on "python@3.12"
  depends_on "cryptography"
 
  def python3
    "python3.12"
  end

  desc "Python-based, generic static web site generator aimed at developers"
  url "https://github.com/jacobfg/python-scripts/archive/refs/tags/0.0.22.zip", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "3bb3f36721f1983a317b3592afc3721b33260b1388a03a42b53cb5ae384197df"
  head "https://github.com/jacobfg/python-scripts/archive/main.zip", :using => GitHubPrivateRepositoryDownloadStrategy

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
          version="0.0.21",
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
          python_requires='>=3.12',
          # install_requires=requirements,
          scripts=[
              "bin/cert-details",
              "bin/httpdecode",
              "bin/httpencode",
              "bin/totp",
              "bin/ini-print",
              "bin/osx-app-setup",
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
