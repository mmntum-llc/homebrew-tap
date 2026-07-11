class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.4.0/mmntum_darwin_amd64"
      sha256 "0f5146461f2e3b109bf5a82a83d7db4d05cd8661bb990c25a4345c43df0ddf4b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.4.0/mmntum_darwin_arm64"
      sha256 "3c57a936a2caf58aeeb2f1675a50be66987e494925bae2c4d5e7e564e55316ff"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.4.0/mmntum_linux_amd64"
      sha256 "8b7d98f4e7e3868c5dcacdb84309d1e0acc64e3558d144837dc5616069513120"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.4.0/mmntum_linux_arm64"
      sha256 "40c78972987a7a3bae584b53451f43d479b1caeacca1c947f1165e8015203eef"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
