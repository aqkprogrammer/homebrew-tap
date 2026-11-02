cask "cluepilot" do
  version "1.2.2"
  sha256 "7a04aaf7498bdfcaea1f26b961526f1bbeea8737d9452623602cbc60123b39f2"

  url "https://github.com/aqkprogrammer/homebrew-tap/releases/download/v#{version}/CluePilot-#{version}.dmg"
  name "CluePilot"
  desc "Private interview preparation copilot that uses your own AI key"
  homepage "https://cluepilot-phi.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "CluePilot.app"

  uninstall quit: "com.innovaith.interviewcopilot"

  zap trash: [
    "~/Library/Application Support/InterviewCopilot",
    "~/Library/Caches/com.innovaith.interviewcopilot",
    "~/Library/HTTPStorages/com.innovaith.interviewcopilot",
    "~/Library/Preferences/com.innovaith.interviewcopilot.plist",
    "~/Library/Saved Application State/com.innovaith.interviewcopilot.savedState",
  ]

  caveats <<~EOS
    CluePilot is not notarized by Apple yet, so macOS may report it as damaged.
    To clear the download flag on CluePilot, run this once:

      xattr -dr com.apple.quarantine #{appdir}/CluePilot.app

    Then open it from Applications, or run: open -a CluePilot
  EOS
end
