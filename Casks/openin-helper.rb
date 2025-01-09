# doesn't include zap

cask "openin-helper" do
  version '4.1.3'
  sha256 'fa4339d914171cfa3ba424a232d95adf073122df4730ba0cfe5e4fd415c54653'

  url "https://loshadki.app/openin-helper4/OpenIn%20Helper%204.2.2.zip"
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
