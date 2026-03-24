cask "transkit" do
  version "3.1.6"

  on_arm do
    sha256 "92bcafa3dca0b20c833821f35627b582a657e19e6f3c2483906b591924d7925d"

    url "https://github.com/transkit-app/transkit-desktop/releases/download/#{version}/TransKit_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fcedc6e06ec7f13d94dd42265608c153595c8b467ba8919f0334343bb969d441"

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
