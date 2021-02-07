require_relative './lib/download_strategy.rb'

class KillRougePinentry < Formula

  homepage "https://gist.github.com/jacobfg/417e745354ac069af3e402c740ba3349"
  version "0.0.1"

  desc "Kill Rouge pinentry processes"
  url "https://gist.github.com/jacobfg/417e745354ac069af3e402c740ba3349/archive/d6ec874e36d34526ad91c9d968d3ef5e6378676b.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "7a9479ad1b04464ab19ae04c3cc3f9f595192c180fa6b4e50b4439748a8d8bb4"

  depends_on "pinentry-mac"

  def install
    bin.install "kill-rouge-pinentry"
  end

  test do
    system "#{bin}/kill-rouge-pinentry"
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
          <string>#{opt_bin}/kill-rouge-pinentry</string>
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
