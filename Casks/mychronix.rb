# Updated by Mychronix's release workflow (scripts/publish-homebrew.sh in
# github.com/crgklr/mychronix); changes made here are replaced at the next release.
cask "mychronix" do
  version "0.1.10"
  sha256 "9241eca8310032a360a36a51692b0859e171b17756e5f9a1528ebd554bd44886"

  url "https://github.com/crgklr/mychronix/releases/download/v#{version}/Mychronix-#{version}-arm64.dmg"
  name "Mychronix"
  desc "Download and analyze AiM MyChron kart data logger sessions"
  homepage "https://github.com/crgklr/mychronix"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Mychronix.app"
  binary "#{appdir}/Mychronix.app/Contents/MacOS/mychronix"

  caveats <<~CAVEATS
    Mychronix isn't signed by Apple yet. The first time you open it (and after
    each update), macOS says it couldn't verify it: click Done, open System
    Settings → Privacy & Security, and click Open Anyway next to Mychronix.
  CAVEATS
end
