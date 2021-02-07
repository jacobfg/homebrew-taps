require_relative './lib/download_strategy.rb'

class KillRoguePinentry < Formula

  homepage "https://gist.github.com/jacobfg/417e745354ac069af3e402c740ba3349"
  version "0.0.2"

  desc "Kill Rogue pinentry processes"
  url "https://gist.github.com/jacobfg/417e745354ac069af3e402c740ba3349/archive/a5f7d852e4362ffc98e6233998ccad7d14b72267.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "3605693e4d4e34efbbdfd83804b6554200728d2fde36a10ab31c4820834d3cd5"

  depends_on "pinentry-mac"

  def install
    bin.install "kill-rogue-pinentry"
  end

  test do
    system "#{bin}/kill-rogue-pinentry"
  end

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>Program</key>
          <string>#{opt_bin}/kill-rogue-pinentry</string>
          <key>ProgramArguments</key>
          <array>
            <string>120</string>
          </array>
          <key>EnvironmentVariables</key>
          <dict>
            <key>PATH</key>
            <string>/bin:/usr/bin:/usr/local/bin</string>
          </dict>
          <key>StartInterval</key>
          <integer>120</integer>
        </dict>
      </plist>
    EOS
  end

  def caveats
    <<~EOS
      launchctl load #{bin}/../#{plist_name}.plist
      launchctl start #{plist_name}
    EOS
  end

end
