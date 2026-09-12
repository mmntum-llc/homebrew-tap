class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.18.0/mmntum_darwin_amd64"
      sha256 "8d013f5d3d8cf4d511f2121ae6810660ac91cb023dbf4c3b4cf92970138b7bbf"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.18.0/mmntum_darwin_arm64"
      sha256 "6f6611a46adf31dfdebfe5937e0bb0aaeba7a89128a39f4de0b02396fced2412"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.18.0/mmntum_linux_amd64"
      sha256 "a0d547b22e9424e5c23594e3c0a3a29324f456050cd92d83692192d796384f53"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.18.0/mmntum_linux_arm64"
      sha256 "59b4d642d077da7e0b4004dfd1bd2f85f669e27914abd3e93c01d7e95c55cb2f"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
