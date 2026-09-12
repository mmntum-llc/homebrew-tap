class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.20.0/mmntum_darwin_amd64"
      sha256 "742d3a388e62440df5d2696a393aa7d3f0459051b502ad7d40fbf590449603ab"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.20.0/mmntum_darwin_arm64"
      sha256 "9bfd683b7a1738ee1ebeb050fb85a93f779ef92a281e5d978077493cb5c98a15"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.20.0/mmntum_linux_amd64"
      sha256 "ac04ac199144b00e3b749f42f3337808350bd331242fa8f715c9c52524f5cb08"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.20.0/mmntum_linux_arm64"
      sha256 "3a62ef7241e59f73dccae9f860ee1f1da28bcdfb6230b8a411c80c7ce0465608"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
