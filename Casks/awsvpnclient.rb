# https://formulae.brew.sh/cask/aws-vpn-client
# doesn't include zap

cask "awsvpnclient" do
  version :latest
  sha256 :no_check

  url "https://d20adtppz83p9s.cloudfront.net/OSX/latest/AWS_VPN_Client.pkg",
      verified: "d20adtppz83p9s.cloudfront.net/"
  name "AWS VPN Client"
  homepage "https://aws.amazon.com/vpn/client-vpn-download/"

  pkg "AWS_VPN_Client.pkg"

  uninstall quit:      "AWS VPN Client.app",
            pkgutil:   "com.amazon.awsvpnclient",
            launchctl: "com.amazonaws.acvc.helper"

  zap delete: "/Library/Application Support/AWSVPNClient",
      trash:  "~/.config/AWSVPNClient"
end
