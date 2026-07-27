class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.13.0/mmntum_darwin_amd64"
      sha256 "e56d8a2fb44f24990834745449aa8915452c7dda823f3bd6732523c658a7fc3f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.13.0/mmntum_darwin_arm64"
      sha256 "821d95a9397ca3e1451e4121e42d21a87853888ee94d2bc59814b5ecae8dfcf7"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.13.0/mmntum_linux_amd64"
      sha256 "5af18c20faaf8d46c45bc9f2cd3da4b4df3948d8b9e7e9784d3bc8afa7ae8f89"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.13.0/mmntum_linux_arm64"
      sha256 "460fb3f4bc7940ea3c59dcfd45cfea43d53ec55c8f510cd1fbca4e7a20cd8a5e"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
