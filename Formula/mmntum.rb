class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.3.0/mmntum_darwin_amd64"
      sha256 "227bccf141656c8d1b935c0db2410744fce9f76d07b65b05aa08e4315d73d843"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.3.0/mmntum_darwin_arm64"
      sha256 "7c250481e00df05c35defb23c36b0ba11d3a8f7da3935a4c6d3ab5ddbb5a257e"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.3.0/mmntum_linux_amd64"
      sha256 "d2a3de0a6591708d01033f26a689a5b205e75713e7b53de7295113d8af916536"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.3.0/mmntum_linux_arm64"
      sha256 "be13855fc587bb882ea0d4c69aeef3e8b520516c81d0a9e7be7247d73777c254"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
