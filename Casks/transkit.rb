cask "transkit" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.3"
  sha256 arm:   "23cb363e80ff1d584f74aac8cb482d1145ee0525bcb762a02ee79fd6636307e2",
          intel: "8a6a2cc42cb2576f37bbd40d7fb286d8e4ce84373d94199997d47ab4bcc0f2b4"

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