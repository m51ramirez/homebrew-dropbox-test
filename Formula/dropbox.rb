class Dropbox < Formula
    desc "dropbox-test"
    homepage "https://github.com/m51ramirez/"
    url "https://github.com/m51ramirez/dropbox-test/releases/download/v1.34.5/dropbox-1.34.5.tar.gz"
    sha256 "951eeb711933ab659c905cd5742975c0cfe805fe825c3389fc9360f3ad849441"
    version "1.34.5"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
          end
end
