cask "transkit" do
  version "3.2.2"

  on_arm do
    sha256 "252fe1d028ae92482f8447ab8466daf3e6d19335c183332e87fc341a920882ab"

    url "https://github.com/transkit-app/transkit-desktop/releases/download/#{version}/TransKit_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c13c3a6f5c12e11ce70a0aa0a4a78332898771888b97dd8d1d28604796b3119c"

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
