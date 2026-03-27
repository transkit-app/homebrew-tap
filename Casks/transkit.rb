cask "transkit" do
  version "3.2.1"

  on_arm do
    sha256 "4994339a53b5973269853d336ce6f568b3ab152724ea4027b7bac0aa0b971d6b"

    url "https://github.com/transkit-app/transkit-desktop/releases/download/#{version}/TransKit_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fee04f506ab8a400bce878580e0ba373172c91816c65c7929816ee25414789e6"

    url "https://github.com/transkit-app/transkit-desktop/releases/download/#{version}/TransKit_#{version}_x64.dmg"
  end

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
