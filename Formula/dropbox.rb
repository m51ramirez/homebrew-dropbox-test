class Dropbox < Formula
    desc "dropbox-test"
    homepage "https://github.com/m51ramirez/"
    url "https://github.com/m51ramirez/dropbox-test/releases/download/v1.34.5/dropbox-1.34.5.tar.gz"
    sha256 "aa3f71c8d812521d79381d3ed093d7a3f9e1e5ec2014c691df82832d95eb670f"
    version "1.34.5"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
          end
end
