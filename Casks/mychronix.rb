# Updated by Mychronix's release workflow (scripts/publish-homebrew.sh in
# github.com/crgklr/mychronix); changes made here are replaced at the next release.
cask "mychronix" do
  version "0.1.19"
  sha256 "0557d840eed7eae69840a22029f609ecfce9340e705b1ad0fae81748e1b25582"

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
