cask 'awsvpnclient' do
  version :latest
  sha256 :no_check

  url 'https://d20adtppz83p9s.cloudfront.net/OSX/latest/AWS_VPN_Client.pkg'
#  appcast 'https://github.com/users/appname/releases.atom'
  name 'AWS VPN Client'
  homepage 'https://aws.amazon.com/vpn/client-vpn-download/'

  pkg 'AWS_VPN_Client.pkg'

  uninstall quit:     [
                        'AWS VPN Client.app',
                        # 'com.amazonaws.acvc',
                        'com.amazonaws.acvc.helper'
                      ],

            pkgutil:  [
                        'com.amazon.awsvpnclient',
                      ]

  zap delete:         [
                        '/Library/Application Support/AWSVPNClient',
                      ]

  zap trash:          [
                        '~/.config/AWSVPNClient',
                      ]

end
