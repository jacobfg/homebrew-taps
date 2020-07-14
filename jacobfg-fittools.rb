require_relative './lib/download_release_strategy.rb'

class JacobfgFittools < Formula
    desc "FIT Tools - java wrangler for Garmin/ANT FIT files"
    homepage "https://github.com/jacobfg/java-fitfile-tool"
    url "https://github.com/jacobfg/java-fitfile-tool/releases/download/0.0.2/fittools-0.0.2.jar", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "31faf082d921d3b5c891d2938cd04168db3268a74a81da391a89f1984f9d387e"
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
