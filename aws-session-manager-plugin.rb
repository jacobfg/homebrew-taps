class AwsSessionManagerPlugin < Formula
  desc "Official Amazon AWS session manager plugin"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"
  url "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip"

  version "1.2.54.0"
  sha256 "920c6842bb6edadb15e6dff7a00f99da3b98db884f3b39cf1a395032ca8e2198"

  depends_on "awscli"

  def install
    bin.install "bin/session-manager-plugin"
    prefix.install %w[LICENSE VERSION]
  end

  test do
    system bin/"session-manager-plugin"
  end
end
