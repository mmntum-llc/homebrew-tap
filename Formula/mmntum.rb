class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.10.0/mmntum_darwin_amd64"
      sha256 "ec6ea86f1686e5ccb2dc07f9943c19c7d76c51b85f69b7b63d4d9efc2959ba94"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.10.0/mmntum_darwin_arm64"
      sha256 "a2a6acbdc01e8a726b9e8e59965fa4389fe9a6302bb5775580e0624da9afdc4b"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.10.0/mmntum_linux_amd64"
      sha256 "a8e7287c84b27a383cecbd38fde888c065dee7e5ee343e52c4a62d9a611f900b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.10.0/mmntum_linux_arm64"
      sha256 "50c9ede57e1756dba0bd6d1548639eae457380b9f677d95de9f581ad33e26fef"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
