# Hacked empty
# class NullDownloadStrategy < AbstractFileDownloadStrategy
#   def fetch; end
#   def stage; end
# end

class LinkSshAuthSock < Formula
  homepage "https://gist.github.com/jacobfg/c8fafe53649b8f9fda634b978e58548e"
  version "0.0.1"

  desc "Link SSH Auth SOCK file for using in macOS GUI applications"
  url "https://gist.github.com/jacobfg/c8fafe53649b8f9fda634b978e58548e/archive/75404255034526c720145409d3ebc92f5d46ef0f.zip"
  sha256 "3110b960636bc6c9f126a03657396f8cdd63f5945bd1623a53adb989c67adfe1"
  # url "empty", :using => NullDownloadStrategy

  def install
    # (bin/"_link-ssh-auth-sock").write <<~EOS
    #   #!/bin/sh
    #   echo launchctl to link ssh auth sock at startup
    # EOS
    # bin.install "README.md"
    # man1.install ("README.md").write <<~EOS
    #   #!/bin/sh
    #   echo launchctl to link ssh auth sock at startup
    # EOS
    # system "touch", "README.md"
    man1.install "README.md" => "link_ssh_auth_sock.1"
  end

  test do
    # system "_link-ssh-auth-sock"
  end

  plist_options :startup => true

  def plist
    <<~PLIST
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
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
    PLIST
  end
end
