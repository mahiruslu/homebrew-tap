cask "kadraj" do
  version "1.0.0"
  sha256 "a8e385d7bbcea218cc6362087495970df16ca0a84fc91dc3308f32cd3120933b"

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
  depends_on macos: :sonoma

  app "Kadraj.app"

  uninstall quit: "com.mahiruslu.kadraj"

  zap trash: [
    "~/Library/Application Support/Kadraj",
    "~/Library/Caches/com.mahiruslu.kadraj",
    "~/Library/Preferences/com.mahiruslu.kadraj.plist",
  ]
end
