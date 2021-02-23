# below doesn't work with service, so including here
# require_relative './lib/download_strategy.rb'

# Hacked empty
class NullDownloadStrategy < AbstractFileDownloadStrategy

  def fetch
  end

  def stage
  end

end

class KillTop < Formula

  homepage "https://gist.github.com/jacobfg/417e745354ac069af3e402c740ba3349"
  version "0.0.1"

  desc "Kill long running top processes"
  url "empty", :using => NullDownloadStrategy

  depends_on "bash-scripts" => "0.0.3"

  def install
    (bin+"_kill-top").write <<~EOS
        #!/bin/sh 
        echo launchctl to kill long running top process
    EOS
  end

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{HOMEBREW_PREFIX}/bin/kill-long-process</string>
            <string>top</string>
            <string>12</string>
          </array>
          <key>EnvironmentVariables</key>
          <dict>
            <key>PATH</key>
            <string>/bin:/usr/bin:/usr/local/bin</string>
          </dict>
          <key>StartInterval</key>
          <integer>12</integer>
        </dict>
      </plist>
    EOS
  end

  # def caveats
  #   <<~EOS
  #     launchctl load #{opt_prefix}/#{plist_name}.plist
  #     launchctl start #{plist_name}
  #   EOS
  # end

end
