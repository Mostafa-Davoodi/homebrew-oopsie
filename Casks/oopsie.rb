cask "oopsie" do
  version "0.1.0"
  sha256 "cfa7993395ed8f3c9276f381c951fedabf479220d204e95949f4bf7f19a9520c"

  url "https://github.com/Mostafa-Davoodi/Oopsie/releases/download/v#{version}/Oopsie-#{version}.zip"
  name "Oopsie"
  desc "Menu bar app for disposable Linux machines you can SSH into"
  homepage "https://github.com/Mostafa-Davoodi/Oopsie"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"
  depends_on formula: "container"

  app "Oopsie.app"

  uninstall quit: "app.oopsie.Oopsie"

  zap trash: [
    "~/.ssh/oopsie_ed25519",
    "~/.ssh/oopsie_ed25519.pub",
  ]
end
