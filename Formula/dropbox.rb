class Dropbox < Formula
    desc "dropbox-test"
    homepage "https://github.com/m51ramirez/"
    url "https://github.com/m51ramirez/dropbox-test/releases/download/v1.34.5/dropbox-1.34.5.tar.gz"
    sha256 "ec17a0d666376de9f925808daa3f2e8aff9aea62c047b8ccf4cc0afa0cf675b7"
    version "1.34.5"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
          end
end
