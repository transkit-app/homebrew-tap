cask "transkit" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.5"
  sha256 arm:   "b35c3bc57662455177a7f575bc16611cc3d67e5a73d54966f0957d7c759dc1d1",
         intel: "46279c4f2013e576aedfadc24e20570ab6ec6aedddcffddea3f326ee39b67a87"

  url "https://github.com/transkit-app/transkit-desktop/releases/download/#{version}/TransKit_#{version}_#{arch}.dmg"
  name "TransKit"
  desc "Cross-platform desktop app for translation, OCR, realtime monitor, and TTS"
  homepage "https://github.com/transkit-app/transkit-desktop"

  app "TransKit.app"
  binary "#{appdir}/TransKit.app/Contents/MacOS/TransKit"

  zap trash: [
    "~/Library/Application Support/com.transkit.desktop",
    "~/Library/Caches/com.transkit.desktop",
  ]
end
