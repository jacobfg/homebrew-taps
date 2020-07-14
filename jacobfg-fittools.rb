require_relative './lib/download_release_strategy.rb'

class JacobfgFittools < Formula
    desc "FIT Tools - java wrangler for Garmin/ANT FIT files"
    homepage "https://github.com/jacobfg/java-fitfile-tool"
    url "https://github.com/jacobfg/java-fitfile-tool/releases/download/0.0.3/fittools-0.0.3.jar", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "8e40a0e969d07e5472bb71a51ca9edd1b7aafb6b774b0bb4022578a1ea5a44d0"
    head "https://github.com/jacobfg/java-fitfile-tool"
  
    bottle :unneeded

    depends_on "openjdk"

    def install
        libexec.install "fittools-#{version}.jar" => "fittools.jar"
        (bin/"fittools").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fittools.jar" "$@"
        EOS
    end

    test do
        resource("fittools").stage do
            # assert_equal expected, shell_output("#{bin}/fittools")
            assert_match "Usage: java -jar fittools.jar <subcommand> <filename> <zwift-filename>", shell_output("#{bin}/fittools", 2)
        end
    end
end
