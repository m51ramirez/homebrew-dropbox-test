class Dropbox < Formula
    desc "dropbox-test"
    homepage "https://github.com/m51ramirez/"
    url "https://github.com/m51ramirez/dropbox-test/releases/download/v1.34.5/dropbox-1.34.5.tar.gz"
    sha256 "fa1ffdb53c82436fb8f3cd3a62c77d10fc3c41ad5194ba307ed49bc5f45b5954"
    version "1.34.5"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
          end
end
