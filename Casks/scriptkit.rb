cask "scriptkit" do
	arch arm: "arm64", intel: "x64"
  
	version "1.54.53"
	# https://github.com/johnlindquist/kitapp/releases/latest
	url "https://github.com/johnlindquist/kitapp/releases/download/v#{version}/Kit-macOS-#{version}-#{arch}.dmg",
		verified: "github.com/johnlindquist/kitapp/"
	sha256 arm: "0b5e08123af44d06f5535e3c4649feb05caabbe80f1be330e0f99d7fda00a753",
		   intel: "fa91e52301e33e14ac6d48d22760406c509f0c30492072008e911d6b46e2980d"
	name "Kit"
	desc "An open-source kit to optimize your developer workflow"
	homepage "https://www.scriptkit.com/"
  
	livecheck do
	  url "https://github.com/johnlindquist/kitapp/releases/latest"
	  strategy :github_latest
	end
  
	app "Kit.app"
  
	auto_updates true
  end
  