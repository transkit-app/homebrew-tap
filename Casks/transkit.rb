cask "transkit" do
  version "3.2.6"

  on_arm do
    sha256 "627e98b6f99ad018dccf3a59c461dfb283de046fa02212fcb0494e3b35361ec2"

    url "https://github.com/transkit-app/transkit-desktop/releases/download/#{version}/TransKit_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "58ada76475a18c02300cc4ba47a7065e254c9006fe5bb14740d14b857a17b301"

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
