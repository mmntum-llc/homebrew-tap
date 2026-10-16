class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.24.0/mmntum_darwin_amd64"
      sha256 "31f523a4ed32d19137c07b4eef9a9b874db0e43a9bd0dba0fde1fc0d5d8579ec"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.24.0/mmntum_darwin_arm64"
      sha256 "04777f82418414c198b438105ff03e8e1cb1bc11b283e498e12f6df9c57751d5"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.24.0/mmntum_linux_amd64"
      sha256 "e4e44ae38ffc49175e35e9c28552f7fbcd6d9c5540b4b4a4fdb054b79efb5c56"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.24.0/mmntum_linux_arm64"
      sha256 "746f90c8712936e96f503eef2521dcd0224d435ebbca3d505f4f093e2dab05ee"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
