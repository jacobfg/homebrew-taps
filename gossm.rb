class Gossm < Formula

  homepage 'https://github.com/gjbae1212/gossm'
  version '1.3.3'

  desc "💻Interactive CLI tool that you can connect to ec2 using commands same as start-session, ssh in AWS SSM Session Manager"
  url "https://github.com/gjbae1212/gossm/releases/download/v1.3.3/gossm_1.3.3_Darwin_x86_64.tar.gz"
  sha256 "d76037207ea8a4097eaa266204753280cb71c12c81adba06f6471f75008d3a29"

  def install
    bin.install "gossm"
  end

  test do
    system "#{bin}/gossm", "--help"
  end

end
