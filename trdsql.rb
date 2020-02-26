require 'formula'

class Trdsql < Formula
  homepage 'https://github.com/noborus/trdsql'
  version 'v0.7.4'
  if OS.mac?
    url 'https://github.com/noborus/trdsql/releases/download/v0.7.4/trdsql_v0.7.4_darwin_amd64.zip'
    sha256 'dde8c52a53450cc7454200623a2451e9bc1b4d8dd302ea04e35e02605634002c'
  elsif OS.linux?
    url 'https://github.com/noborus/trdsql/releases/download/v0.7.4/trdsql_v0.7.4_linux_amd64.zip'
    sha256 '4981250172a1f2c8001840c364ce654060a9585ce2c6c8d165225ca53fa2d68e'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'trdsql'
  end

  test do
    system "#{bin}/trdsql"
  end
end
