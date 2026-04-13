cask "transkit" do
  version "3.3.2"

  on_arm do
    sha256 "ea531b90fce0ee6e0d52ce99b9b5a07e19e79fa8824db3c41ebceefdfc9508af"

    url "https://github.com/transkit-app/transkit-desktop/releases/download/#{version}/TransKit_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3d2475d8af99287a74d1b3a0b353e221ee2ce2ada217344b7c34b009539e9bab"

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
