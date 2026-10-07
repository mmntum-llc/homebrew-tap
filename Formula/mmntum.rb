class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.23.0/mmntum_darwin_amd64"
      sha256 "1b120af1afb477f1d13687d18387f6c4e11ed277007acea6860bf41dc158bba7"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.23.0/mmntum_darwin_arm64"
      sha256 "e523265ff86cbbf1cf27d72e64bcd73879c13bdeeb0cb4452bd8eb339124642b"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.23.0/mmntum_linux_amd64"
      sha256 "c7a10bdf8754ff2fd33b829fba7881405c6338e416f1d618df25b40e20cf1c0f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.23.0/mmntum_linux_arm64"
      sha256 "dd395ca004c054d71a1ebe78bdcb9a760c9c15e9e8a0f0878b16784c0a34ec1e"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
