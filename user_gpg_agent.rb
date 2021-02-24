class UserGpgAgent < Formula
  homepage "https://gist.github.com/jacobfg/c8fafe53649b8f9fda634b978e58548e"
  version "0.0.1"

  desc "Run GPG Agent through GPG"
  url "https://gist.github.com/jacobfg/c8fafe53649b8f9fda634b978e58548e/archive/75404255034526c720145409d3ebc92f5d46ef0f.zip"
  sha256 "3110b960636bc6c9f126a03657396f8cdd63f5945bd1623a53adb989c67adfe1"

  def install
    man1.install "README.md" => "user_gpg_agent.1"
  end

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
          <string>/usr/local/bin/gpgconf</string>
          <string>--launch</string>
          <string>gpg-agent</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
      </dict>
      </plist>
    PLIST
  end
end
