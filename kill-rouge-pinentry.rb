require_relative './lib/download_strategy.rb'

class KillRougePinentry < Formula

  homepage "https://gist.github.com/jacobfg/417e745354ac069af3e402c740ba3349"
  version "0.0.2"

  desc "Kill Rouge pinentry processes"
  url "https://gist.github.com/jacobfg/417e745354ac069af3e402c740ba3349/archive/5ac02d733d993ffacbd1d3d41b678919eab63919.zip", :using => GitHubPrivateGistDownloadStrategy
  sha256 "5471563985a876594ec279a1f1edbadf740b79f6b6c70101b3fa56fb1b88dd29  "

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
