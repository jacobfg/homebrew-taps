# https://gist.github.com/mickep76/ca29cca70f0b458aee4d
#
class Mark < Formula
  homepage "https://github.com/kovetskiy/mark"
  url "https://github.com/kovetskiy/mark/releases/download/5.6/mark_5.6_Darwin_x86_64.tar.gz"
  sha256 "20a063e4bc0c8c1ec686d469966fbafe5b3c7ae29731570c0645a35cff6e81b9"

  # depends_on "go" => :build

  def install
    # system "gobuild.sh"
    # bin.install ".gobuild/bin/tf" => "tf"
    bin.install "mark"
  end

  test do
    system "#{bin}/tf", "--help"
  end
end
