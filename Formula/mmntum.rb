class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.2.0/mmntum_darwin_amd64"
      sha256 "f171c39faae1df101447ff4274dc2c00e92ec9f63fb3c25495024ef0a3d83e34"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.2.0/mmntum_darwin_arm64"
      sha256 "08e47d2d168b7350cd020992b7759b44cccc23edd1ba2b51dbb0d1f64750957b"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.2.0/mmntum_linux_amd64"
      sha256 "e45ab942e9c21ad9eb14d7b460cce77110951da941318a83974b6eb284401ad6"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.2.0/mmntum_linux_arm64"
      sha256 "b37b11ccf858d3d10188d7483b332dd0d32392831b2c47b06cfef9b6753f004b"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
