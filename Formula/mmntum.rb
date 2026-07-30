class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.15.0/mmntum_darwin_amd64"
      sha256 "4137315a4e02d2d3de23b81c607faed88f9a21a46de9068829dc102be114ce92"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.15.0/mmntum_darwin_arm64"
      sha256 "e0be0950e881a78c4fc1c42ae223e4cfd4bedfc46dc6dbc3cc63a9cb30717db8"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.15.0/mmntum_linux_amd64"
      sha256 "f721ca68d725375161eb007dc384154ebcba0e8a1ccaf208544dd4bfcec8dd5b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.15.0/mmntum_linux_arm64"
      sha256 "cc575b8b750ea01f56c07176043569c94ff8c28016dfa11eae6cbba6a3bd9fef"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
