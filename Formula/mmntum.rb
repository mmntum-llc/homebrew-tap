class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.28.0/mmntum_darwin_amd64"
      sha256 "3bb3a33c292c4e96e732fb8bc15ac0cd511ea4f514195b23ff0d92c5d56f95c7"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.28.0/mmntum_darwin_arm64"
      sha256 "31bd3e36b53eabb5aeaa391aa742433273cd8685bd0ccdaa32f529e66466f1a0"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.28.0/mmntum_linux_amd64"
      sha256 "e1aa43e99046767cfe2a6ff78f0484f9b7d89f4b00c7f9e0576cd3137acc371c"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.28.0/mmntum_linux_arm64"
      sha256 "19360bc7d0576cb70284f92d34062253b57c36bddc7fb93afdb18d95bc68c488"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
