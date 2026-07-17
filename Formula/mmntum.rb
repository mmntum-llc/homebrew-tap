class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.7.2/mmntum_darwin_amd64"
      sha256 "e4adeec024181cc9862fa33e992a9191cdf6eff51cb497576d2a35f89cd9114f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.7.2/mmntum_darwin_arm64"
      sha256 "bbf35388806c6002bdd75b109ba261fdd042d0e57d068eaf3c69166df15a26e0"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.7.2/mmntum_linux_amd64"
      sha256 "0aa77a3fa923232acf646f468ec849d8b27ddf78b0b149bef370edd5e4781a6f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.7.2/mmntum_linux_arm64"
      sha256 "f4ebee1c49361084d08a5cc070c56a8b99036ceb6fe63425be1383ee7d917aec"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
