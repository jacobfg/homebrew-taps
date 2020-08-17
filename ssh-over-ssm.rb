class SshOverSsm < Formula

  homepage 'https://github.com/elpy1/ssh-over-ssm'
  version '0.0.1'

  desc "SSH over AWS SSM. No bastions or public-facing instances. SSH user management through IAM. No requirement to store SSH keys locally or on server."
  url "https://github.com/elpy1/ssh-over-ssm/archive/b62522dec9a8d3d7a07272a852fb2d5cf8564da1.zip", :using => CurlDownloadStrategy
  sha256 "7f93c3287b1394d429813ba851ffa9e5ea87fee9b5bbc615ad7df12fb2c52e3b"
  head "https://github.com/elpy1/ssh-over-ssm/scripts/archive/master.zip", :using => CurlDownloadStrategy

  depends_on 'ssm-tool'
 
  def install
    bin.install "ssh-ssm.sh" => "ssh-ssm"
  end

  # TODO: Add your package's tests here
  test do
    system "#{bin}/ssh-ssm"
  end

end
