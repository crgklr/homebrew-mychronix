# Updated by Mychronix's release workflow (scripts/publish-homebrew.sh in
# github.com/crgklr/mychronix); changes made here are replaced at the next release.
cask "mychronix" do
  version "0.1.24"
  sha256 "406f8191706ea2be0b6a44da02cfc0b4af12d4d4a0dca034b8b342b7dfaa02e5"

  url "https://github.com/crgklr/mychronix/releases/download/v#{version}/Mychronix-#{version}-arm64.dmg"
  name "Mychronix"
  desc "Download and analyze AiM MyChron kart data logger sessions"
  homepage "https://github.com/crgklr/mychronix"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Mychronix.app"
  binary "#{appdir}/Mychronix.app/Contents/MacOS/mychronix-cli"

  caveats <<~CAVEATS
    Mychronix isn't signed by Apple yet. The first time you open it (and after
    each update), macOS says it couldn't verify it: click Done, open System
    Settings → Privacy & Security, and click Open Anyway next to Mychronix.
  CAVEATS
end
