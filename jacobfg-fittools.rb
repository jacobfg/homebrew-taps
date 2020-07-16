require_relative './lib/download_release_strategy.rb'

class JacobfgFittools < Formula

    desc "FIT Tools - java wrangler for Garmin/ANT FIT files"
    homepage "https://github.com/jacobfg/java-fitfile-tool"

    version "0.0.4"
    url "https://github.com/jacobfg/java-fitfile-tool/releases/download/0.0.4/fittools-0.0.4.jar", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "2539ead30ca531c6a5d25e5d683768c28142006162c8acb352249272bc6693b9"
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
