class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.21.0/mmntum_darwin_amd64"
      sha256 "6d0f8a0baf9e417a3ac21c8256c19ebb839ad5694db521dc1030269262a5f562"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.21.0/mmntum_darwin_arm64"
      sha256 "8df146809842704484b1ccee3c13164ff7236b2bee1a56c6ee1cd889a8967587"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.21.0/mmntum_linux_amd64"
      sha256 "f646ff05b88115fc890e40bda0cd9099020401ce85596685c859f480899a1393"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.21.0/mmntum_linux_arm64"
      sha256 "e5eb76e9befd343ef93767ed4adb21e2663d89b47b95e8ca3aeeb9870d33c7cd"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
