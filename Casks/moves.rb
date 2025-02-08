# doesn't include zap

cask "moves" do
  version '4.1.3'
  sha256 '2ddd33401be40622fa3edaa8ce23011bbcc0d52f2ed89c195df1c2b863439a2b'

  url "https://moves-updates.s3.eu-west-1.amazonaws.com/Moves-latest.zip"
  name "moves"
  homepage "https://mikkelmalmberg.com/moves"

  app 'Moves.app'

#   livecheck do
#     url :url
#     strategy :header_match
#   end
  
#   auto_updates true
  
  uninstall quit:      "Moves.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brnbw.moves.sfl3",
    "~/Library/Preferences/com.brnbw.Moves.plist",
  ]
end
