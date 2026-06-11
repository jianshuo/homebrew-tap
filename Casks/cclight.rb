cask "cclight" do
  version "1.0.4"
  sha256 "0f4c8281cb27cc211eac8678aeeebc75b5afc5e4756a18d07e611b72dbac6d34"

  url "https://github.com/jianshuo/cclight/releases/download/v#{version}/CCLight-v#{version}.dmg"
  name "CCLight"
  desc "Claude Code status as light around the MacBook notch"
  homepage "https://github.com/jianshuo/cclight"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "CCLight.app"

  zap trash: [
    "~/Library/Application Support/CCLight",
    "~/Library/Preferences/com.jianshuo.cclight.plist",
  ]
end
