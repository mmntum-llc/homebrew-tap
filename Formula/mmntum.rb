class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.8.0/mmntum_darwin_amd64"
      sha256 "4cb3cee3ae0b48a84be870f34c226deec8f693670319b0c79801aa42c43ecbc2"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.8.0/mmntum_darwin_arm64"
      sha256 "3a8d16be7622998b90f8ea412f5d1f295140188e4ccbe7076d9ca79d8c7b6553"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.8.0/mmntum_linux_amd64"
      sha256 "99b0cddb5d48979026d11668e79d468b8e607f831ca96ef332fec455331ab7cf"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.8.0/mmntum_linux_arm64"
      sha256 "065ec1499f57fb0a0a2585a35a29f7f230d23b7dbf6d9a7e681134b6cbbfb679"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
