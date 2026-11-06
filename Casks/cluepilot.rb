cask "cluepilot" do
  version "1.3.0"
  sha256 "f1cdce08d26651ec8ac66a4b786732c60e2fddb3bc58c0554bd60017e4b6c37f"

  url "https://github.com/aqkprogrammer/homebrew-tap/releases/download/v#{version}/CluePilot-#{version}.dmg"
  name "CluePilot"
  desc "Private interview preparation copilot that uses your own AI key"
  homepage "https://cluepilot-phi.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

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
