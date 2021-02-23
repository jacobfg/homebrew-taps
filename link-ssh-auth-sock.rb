# below doesn't work with service, so including here
# require_relative './lib/download_strategy.rb'

# Hacked empty
class NullDownloadStrategy < AbstractFileDownloadStrategy

  def fetch
  end

  def stage
  end

end

class LinkSshAuthSock < Formula

  homepage "https://gist.github.com/jacobfg/417e745354ac069af3e402c740ba3349"
  version "0.0.1"

  desc "Link SSH Auth SOCK file for using in macOS GUI applications"
  url "empty", :using => NullDownloadStrategy

  def install
    (bin+"_link-ssh-auth-sock").write <<~EOS
        #!/bin/sh 
        echo launchctl to link ssh auth sock
    EOS
  end

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs>
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>/bin/sh</string>
            <string>-c</string>
            <string>/bin/ln -sf $(/usr/local/bin/gpgconf --list-dirs agent-ssh-socket 2>/dev/null) $SSH_AUTH_SOCK</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
        </dict>
      </plist>
    EOS
  end

end
