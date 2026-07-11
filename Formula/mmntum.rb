class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.5.0/mmntum_darwin_amd64"
      sha256 "077279b6ebb54749690f6ef308c3792f44794cbfcfac6abcfa993f307a3431ba"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.5.0/mmntum_darwin_arm64"
      sha256 "261428a0af87286df0793ca9b208d3ac94786232b4e771907c23c987f95307c6"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.5.0/mmntum_linux_amd64"
      sha256 "d8803b6a5786b98b0cebe925384b25f6d2f24c04556f97898b318622d409defb"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.5.0/mmntum_linux_arm64"
      sha256 "1a7ce31ca1402bba9b9b698a4c88b3dc2a04df34bcfacbc613073dd37bc4c76a"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
