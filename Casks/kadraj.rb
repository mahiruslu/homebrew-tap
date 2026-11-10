cask "kadraj" do
  version "0.3.0"
  sha256 "7d5766c9a3988439d723c1dfc214d1c594b1041363969fa04b3909d03f1fb66c"

  url "https://github.com/mahiruslu/kadraj/releases/download/v#{version}/Kadraj.zip"
  name "Kadraj"
  desc "Screenshot tool with annotation, OCR, scrolling capture and recording"
  homepage "https://github.com/mahiruslu/kadraj"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Kadraj updates itself from the menu (and checks daily), so brew leaves upgrades to it.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Kadraj.app"

  uninstall quit: "com.mahiruslu.kadraj"

  zap trash: [
    "~/Library/Application Support/Kadraj",
    "~/Library/Caches/com.mahiruslu.kadraj",
    "~/Library/Preferences/com.mahiruslu.kadraj.plist",
  ]
end
