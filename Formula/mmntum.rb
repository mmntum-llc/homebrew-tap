class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.6.0/mmntum_darwin_amd64"
      sha256 "6c77bb7cf194428897eac7118752eeae6192b895be41a85a00ffe4ac17661f4e"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.6.0/mmntum_darwin_arm64"
      sha256 "deeec7def387678df3c26caf5e75165754f9a26641282ec13226623d0addbdfe"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.6.0/mmntum_linux_amd64"
      sha256 "52bf0d812c3045a88e68e618f6f50607f6417581086b10e643e8f5446749285b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.6.0/mmntum_linux_arm64"
      sha256 "79fb1137f8424be57162d9e267e30b8dba39affe9d94b6afb39e8b1632473acb"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
