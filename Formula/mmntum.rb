class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.12.0/mmntum_darwin_amd64"
      sha256 "bf5fc275bb4cf08c5a076168b8a7492806d04aaae25a1887e9513450d0f2f03b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.12.0/mmntum_darwin_arm64"
      sha256 "af11d913b7e0d7e63d09e53cad88bd0b4d6158750920527df9e30dffe23ed804"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.12.0/mmntum_linux_amd64"
      sha256 "12b7158aae0ac3c422c59cc641529692fc647808a0665c4bf3f7a346c9843443"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.12.0/mmntum_linux_arm64"
      sha256 "2a1f4578bf4374f4b50478df32051ed12d0c3fff81a3996b07e581a6a8772b0b"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
