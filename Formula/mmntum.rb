class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.8.1/mmntum_darwin_amd64"
      sha256 "1b6163cf4c508299928e483abe000da303875130352000d4ddcca19d88435cca"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.8.1/mmntum_darwin_arm64"
      sha256 "26974dfe7e15b8c3ffe5ad6f591c5b2cf5a99fd96ea4f589e10d2340401bba47"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.8.1/mmntum_linux_amd64"
      sha256 "6ca77a8e43037aaac9a25f791b6a1608b5c8d3c3d8d854f5902dc33f7d1582fc"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.8.1/mmntum_linux_arm64"
      sha256 "d5a77b614e69703aeb1ab1a89a90cb5c7249579cf482b6fef3fc06bea4c4c6cf"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
