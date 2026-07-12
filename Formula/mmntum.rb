class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.7.0/mmntum_darwin_amd64"
      sha256 "af041e5b17c0ec53447dd510473f2a66c895427528f23339f22b3c3911122f2c"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.7.0/mmntum_darwin_arm64"
      sha256 "aefe959719aedc0e78074440cba2ac49c4df4321309f185446f175416cc87f70"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.7.0/mmntum_linux_amd64"
      sha256 "59534076de569f0281d8cdc674c28e803c8df1613c40f3403bc72a8e2fe3e275"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.7.0/mmntum_linux_arm64"
      sha256 "7b0d4806b9184bd6ef27d1d5effdae2f579467ac021528a7e5171975f241d798"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
