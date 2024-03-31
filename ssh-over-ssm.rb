class SshOverSsm < Formula

  homepage 'https://github.com/elpy1/ssh-over-ssm'
  version '0.0.2'

  desc "SSH over AWS SSM. No bastions or public-facing instances. SSH user management through IAM. No requirement to store SSH keys locally or on server."
  url "https://github.com/elpy1/ssh-over-ssm/archive/e439729a80dd65990bd3bf7b96f4a180dc93c7e3.zip", :using => CurlDownloadStrategy
  sha256 "19c4d7511b959a830813274272ed8828a089f54966785fc2dd422c9fd29ef8f5"
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
