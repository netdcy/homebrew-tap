cask "flowvision" do
  version "1.2.2.1"
  sha256 "80d2ce6c65b95c284b8c27691563834331316ed63c1a8b71e1d3be4a3b075817"

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
