require_relative './lib/download_release_strategy.rb'

class JacobfgFittools < Formula

    desc "FIT Tools - java wrangler for Garmin/ANT FIT files"
    homepage "https://github.com/jacobfg/java-fitfile-tool"

    version "0.1.0"
    url "https://github.com/jacobfg/java-fitfile-tool/releases/download/0.1.0/fittools-0.1.0.jar", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "3b6cf2f1f612202bb3ae1d8fdeea398d0c6ff211b03315e226dca84f324a2262"
    head "https://github.com/jacobfg/java-fitfile-tool"
  
    bottle :unneeded

    depends_on "openjdk"

    def install
        libexec.install "fittools-#{version}.jar" => "fittools.jar"
        (bin/"fittools").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fittools.jar" "$@"
        EOS
        (bin/"fit-details").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fittools.jar" "file-details" "$@"
        EOS
        (bin/"zwift-merge").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fittools.jar" "zwift-merge" "$@"
        EOS
        (bin/"fit-splice").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fittools.jar" "splice-file" "$@"
        EOS
        (bin/"fit-reencode").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fittools.jar" "reencode-file" "$@"
        EOS
    end

    test do
        resource("fittools").stage do
            # assert_equal expected, shell_output("#{bin}/fittools")
            assert_match "Usage: java -jar fittools.jar <subcommand> <filename> <zwift-filename>", shell_output("#{bin}/fittools", 2)
        end
    end
end
