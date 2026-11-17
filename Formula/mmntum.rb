class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.27.0/mmntum_darwin_amd64"
      sha256 "f72dcae7fb632f998fad450e6e67a1da24757d83ef66fae056286d8c0a34d639"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.27.0/mmntum_darwin_arm64"
      sha256 "2be9e4d177d4d50f2bd518fd28c966bc4cd4497201f1b1403807568e2c8d488b"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.27.0/mmntum_linux_amd64"
      sha256 "ade80c9b203b9a3cdd587931760a7226f51bda7593a964685d6cbc803a6f9312"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.27.0/mmntum_linux_arm64"
      sha256 "d674dc0b98f442bac07acc4f32c8e4227c7911a55e07c986877c83e9c8916470"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
