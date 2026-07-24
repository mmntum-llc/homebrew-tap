class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.10.0/mmntum_darwin_amd64"
      sha256 "354a608fe6a37c91f9469261d0f2093721c8ea1270ee8396ee3ec1754273586a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.10.0/mmntum_darwin_arm64"
      sha256 "97a01dfeda654695b429d6652d149605936dfb42cc26fc78a09e1938695e96f5"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.10.0/mmntum_linux_amd64"
      sha256 "24437442a2ba9f4df6d3e5e591c6867d2622b4a43de8e76f3e3cda21f3b5983d"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.10.0/mmntum_linux_arm64"
      sha256 "1b28f709088ee36f5cd9eed8c9b56de3e449db49c957e6c382497ad2697546f2"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
