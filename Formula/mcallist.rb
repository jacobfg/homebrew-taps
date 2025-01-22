class Mcallist < Formula

    desc "list macOS calendar events"
    homepage "https://github.com/jacobfg/mcal-list"

    version "0.0.1"
    url "https://github.com/jacobfg/mcal-list/releases/download/0.0.1/mcal-list"
    #  :using => CurlDownloadStrategy
    sha256 "5159847b652c779fd248de48564af51098852d90a3ea24b32e358bace20af01c"
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
