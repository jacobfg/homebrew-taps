# https://formulae.brew.sh/cask/aws-vpn-client
# doesn't include zap

cask "openin-helper" do
  version '4.1.3'
  sha256 '3196b3d63b30515a85137a609740753581d0d08bc7016a2374bc5c93b4560578'

  url "https://loshadki.app/openin-helper4/OpenIn%20Helper%204.1.3.dmg"
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
