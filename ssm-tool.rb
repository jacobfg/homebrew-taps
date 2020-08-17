class SsmTool < Formula
  include Language::Python::Virtualenv

  homepage 'https://github.com/elpy1/ssm-tool'
  version '0.0.1'

  desc "AWS SSM and SSH toolkit. Access private AWS instances easily with no need to manually manage SSH keys on remote servers."
  url "https://github.com/elpy1/ssm-tool/archive/3a193d3b9ee2c511ab2d43653602ab1f758c42b9.zip", :using => CurlDownloadStrategy
  sha256 "25ec2c2055ffc2b4cd9cf694b7119494ff51cf57e951b408272ccd77a433d187"
  head "https://github.com/elpy1/ssh-over-ssm/scripts/archive/master.zip", :using => CurlDownloadStrategy

  depends_on 'python'
 
  def install
    File.open(File.join(buildpath, 'setup.py'), 'w') do |f|
      f << <<~HEREDOC
      import os
      import setuptools
      
      with open('requirements.txt') as fh:
          requirements = fh.read().splitlines()

      setuptools.setup(
          name="ssm-tool",
          version="0.0.1",
          author="elpy",
          author_email="elpy@opsdevops.dev",
          description="AWS SSM and SSH toolkit. Access private AWS instances easily with no need to manually manage SSH keys on remote servers",
          long_description="AWS SSM and SSH toolkit. Access private AWS instances easily with no need to manually manage SSH keys on remote servers.",
          long_description_content_type="text/markdown",
          url="https://github.com/elpy1/ssm-tool",
          packages=setuptools.find_packages(),
          classifiers=[
              "Programming Language :: Python :: 3",
              "License :: OSI Approved :: MIT License",
              "Operating System :: OS Independent",
          ],
          python_requires='>=3.6',
          install_requires=requirements,
          scripts=[
              "ssm-tool",
          ]
      )
      HEREDOC
    end

    venv = virtualenv_create(libexec, "python3")
    system libexec/"bin/pip", "install", "-v", "-r", "requirements.txt",
                              "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "ssm-tool"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/ssm-tool"
  end

end
