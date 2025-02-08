# doesn't include zap

cask "openin-helper" do
  version '4.2.2-1'
  sha256 '45bcb87c470df28cf6fbe342b06f0f3d207b9846379665d89cd7e912f1a7011c'

  url "https://loshadki.app/openin-helper4/releases/OpenIn%20Helper%204.2.2.zip"
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
