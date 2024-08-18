cask "flowvision" do
  version "1.2.3"
  sha256 "450361d9156d49d2e6310a9edc830c587653e554baf7b9daf65d5b1c19830b7f"

  url "https://github.com/netdcy/FlowVision/releases/download/#{version}/FlowVision.#{version}.zip"
  name "FlowVision"
  desc "Waterfall-style Image Viewer for macOS"
  homepage "https://github.com/netdcy/FlowVision"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "FlowVision.app"

  zap trash: [
    "~/Library/Application Support/FlowVision",
    "~/Library/Preferences/netdcy.FlowVision.plist",
    "~/Library/Saved Application State/netdcy.FlowVision.savedState",
  ]
end
