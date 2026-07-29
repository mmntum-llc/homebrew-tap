class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.14.0/mmntum_darwin_amd64"
      sha256 "f89338f9f0db3a8d8a8a0d884bbc5d129964aa621971b076d003e8196c027186"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.14.0/mmntum_darwin_arm64"
      sha256 "946463e27c071192e4542ac81dcb7fe31581525ed2aa5ae6f02cfa6268cde491"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.14.0/mmntum_linux_amd64"
      sha256 "4cebb9cdf54b15541a3604a6672707fdf837bda490102a05dc806c72a5259f29"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.14.0/mmntum_linux_arm64"
      sha256 "02859652e7c43706b11c4e426735fabce15a0c3aa72491a5e6bfb4bb0a662e92"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
