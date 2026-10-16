class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.23.1/mmntum_darwin_amd64"
      sha256 "3efba8932e59c6a7020d138c9e0ddfbefeec71f3d1d617588d3aa2a4f8e8beb2"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.23.1/mmntum_darwin_arm64"
      sha256 "ada0a16ab8b92f1824d6c02f06a16c3616c28171d567f7b71adf246dd2debc90"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.23.1/mmntum_linux_amd64"
      sha256 "677bc82abae776ed4fddc9f601d4c70b62ee4a377af1491f94fd056a1b6606e4"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.23.1/mmntum_linux_arm64"
      sha256 "ba89e07dc0cdd9e94d6320e14627c082af8509f13916911a5914afcd09a9ee94"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
