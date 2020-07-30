require_relative './lib/download_release_strategy.rb'

class Fitfiletools < Formula

    desc "FIT Tools - Java tool for Garmin/ANT FIT files"
    homepage "https://github.com/jacobfg/java-fitfile-tool"

    version "0.2.0"
    url "https://github.com/jacobfg/java-fitfile-tool/releases/download/0.2.0/fitfiletools-0.2.0.jar", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "5d608480a89b1a60b1b6daa2ec0c589ab494ee45002962a433915b61bea2a337"
    head "https://github.com/jacobfg/java-fitfile-tool"
  
    bottle :unneeded

    depends_on "openjdk"

    def install
        libexec.install "fitfiletools-#{version}.jar" => "fitfiletools.jar"
        (bin/"fitfiletools").write <<~EOS
            #!/bin/bash
            exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/fitfiletools.jar" "$@"
        EOS
        bin.install_symlink "fitfiletools" => "fft"
    end

    test do
        resource("fitfiletools").stage do
            # assert_equal expected, shell_output("#{bin}/fitfiletools")
            assert_match "FIT File Tools", shell_output("#{bin}/fitfiletools", 2)
        end
    end
end
