# https://formulae.brew.sh/cask/aws-vpn-client
# doesn't include zap

cask "openin-helper" do
  version '2.0.0'
  sha256 'b7d7cc09c7ee3bc8943e3319878aaff2f652dff4e4e5115cbe336e63e50608d8'

  url "https://loshadki.app/openin-helper/OpenIn%20Helper%202.0.0.dmg"
  name "https://loshadki.app"
  homepage "https://loshadki.app/openin-helper/"

  app 'OpenIn Helper.app'

#   livecheck do
#     url :url
#     strategy :header_match
#   end
  
#   auto_updates true
  
#   uninstall quit:      "OpenIn Helper.app",

  zap trash: []
end