cask "oopsie" do
  version "0.3.0"
  sha256 "23ef6e68bd49ba578247a682be8045c81a89b251f2bc5d446203544a7b608634"

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
