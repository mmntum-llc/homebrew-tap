class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.20.1/mmntum_darwin_amd64"
      sha256 "9719142501c20b6553701e0354b2bc4e87ebc278e75c6a4d3cdde6dd2c649871"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.20.1/mmntum_darwin_arm64"
      sha256 "675e4951a90527e72248f4ad3be3ac6459a9b3a9d2ae71ee4c4f9bc8f4061f76"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.20.1/mmntum_linux_amd64"
      sha256 "5fa752c338f55d7ad4b2600fc88508b911cf868048a931574647a0d8c9205448"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.20.1/mmntum_linux_arm64"
      sha256 "4f5fc4330e07c02fa2a698c219dac371f04943afd4826266b95a81f8c4a01907"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
