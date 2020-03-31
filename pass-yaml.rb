class PassYaml < Formula
    desc "The Pass extension for outputting YAML format"
    homepage "https://github.com/jacobfg/pass-yaml#readme"
    url "https://github.com/jacobfg/pass-yaml/archive/develop.zip"
    sha256 "41d405a76a0c56a8aa4c9db7272eeaca7d1ef2394034db53db7c7e75e70c07bd"
  
    # bottle do
    #   cellar :any_skip_relocation
    #   rebuild 1
    #   sha256 "515eb09606a7e6d384d81a2cb045189b0f1dbda605f4743cd06f9bdb665ff0db" => :catalina
    #   sha256 "4fd5893adc28693cf5b532d0ad1d469d58842e355d676cb3371c4832ed1e7a0c" => :mojave
    #   sha256 "4fd5893adc28693cf5b532d0ad1d469d58842e355d676cb3371c4832ed1e7a0c" => :high_sierra
    #   sha256 "bd30d129efb90973ffa102df943b0b3f07c47f28cb70027bec07a75d66bfd145" => :sierra
    # end
  
    depends_on "gnupg" => :test
    # depends_on "oath-toolkit"
    depends_on "pass"
  
    def install
      system "make", "PREFIX=#{prefix}", "BASHCOMPDIR=#{bash_completion}", "install"
    end
  
    test do
    #   (testpath/"batch.gpg").write <<~EOS
    #     Key-Type: RSA
    #     Key-Length: 2048
    #     Subkey-Type: RSA
    #     Subkey-Length: 2048
    #     Name-Real: Testing
    #     Name-Email: testing@foo.bar
    #     Expire-Date: 1d
    #     %no-protection
    #     %commit
    #   EOS
    #   begin
    #     system Formula["gnupg"].opt_bin/"gpg", "--batch", "--gen-key", "batch.gpg"
    #     system "pass", "init", "Testing"
    #     require "open3"
    #     Open3.popen3("pass", "otp", "insert", "hotp-secret") do |stdin, _, _|
    #       stdin.write "otpauth://hotp/hotp-secret?secret=AAAAAAAAAAAAAAAA&counter=1&issuer=hotp-secret"
    #       stdin.close
    #     end
    #     assert_equal "073348", `pass otp show hotp-secret`.strip
    #   ensure
    #     system Formula["gnupg"].opt_bin/"gpgconf", "--kill", "gpg-agent"
    #   end
    end
  end
