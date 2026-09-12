class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.19.0/mmntum_darwin_amd64"
      sha256 "446e87157711893a4208de0c359b416d851045bf649378b6464ffe14b75fde99"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.19.0/mmntum_darwin_arm64"
      sha256 "bd055bed97eaa2a4670fee41199c23964b15549d906256aa1942e2d366de8a83"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.19.0/mmntum_linux_amd64"
      sha256 "d904c3452c53fdad4a1e0bfe6290cffab269c7e9b9c59c8da948bdecaa805620"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.19.0/mmntum_linux_arm64"
      sha256 "9a3968bae7299f14400c0c195b558007507aca5edb7084fdb9f4ae1d74e4a07a"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
