class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.25.0/mmntum_darwin_amd64"
      sha256 "aef93dd16dcc3ad24b6c81f28459ac20bc004da76f5fb2b9903af25facb44485"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.25.0/mmntum_darwin_arm64"
      sha256 "47c060c3e739e824d972ee688caeaacd19fc918bebe8baba39396ab06a4fd04d"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.25.0/mmntum_linux_amd64"
      sha256 "898567057361ff6f8df78d03e16a39bf062c9645378dae672e29f652ccec54c7"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.25.0/mmntum_linux_arm64"
      sha256 "7dc5d7a713a69526aa2cd38fa720ee823b92610b7129250488cb13a2f66c87ff"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
