class Mcallist < Formula

    desc "list macOS calendar events"
    homepage "https://github.com/jacobfg/mcal-list"

    version "0.0.2"
    url "https://github.com/jacobfg/mcal-list/releases/download/0.0.2/mcal-list"
    sha256 "17bf608075c8ee13842eaf5377cda3383f0172f3903cdffc9228815e1da4359b"
    head "https://github.com/jacobfg/mcal-list"

    # bottle :unneeded

    def install
        bin.install "mcal-list" => "mcal-list"
    end

    test do
        resource("mcal-list").stage do
            assert_match "List calendar events for today and tomorrow in macOS/Calendar.app", shell_output("#{bin}/mcal-list", 2)
        end
    end
end
