require_relative './lib/download_release_strategy.rb'

class JacobfgFittools < Formula

    desc "FIT Tools - java wrangler for Garmin/ANT FIT files"
    homepage "https://github.com/jacobfg/java-fitfile-tool"

    version "0.0.5"
    url "https://github.com/jacobfg/java-fitfile-tool/releases/download/0.0.5/fittools-0.0.5.jar", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "1dcb52ff88b326439d9799bdd175cdc68bc321dd02666c34fcff57bef0dd9057"
    head "https://github.com/jacobfg/java-fitfile-tool"
  
    bottle :unneeded

    depends_on "openjdk"

    def install
        libexec.install "fittools-#{version}.jar" => "fittools.jar"
        (bin/"fittools").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fittools.jar" "$@"
        EOS
        (bin/"zwift-merge").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fittools.jar" "zwift-merge" "$@"
        EOS
    end

    test do
        resource("fittools").stage do
            # assert_equal expected, shell_output("#{bin}/fittools")
            assert_match "Usage: java -jar fittools.jar <subcommand> <filename> <zwift-filename>", shell_output("#{bin}/fittools", 2)
        end
    end
end
