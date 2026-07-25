class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.11.0/mmntum_darwin_amd64"
      sha256 "b9f34fadd60abba4b726171413a0fbb4664e4aba08cba0c0b8401684c46e0ff0"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.11.0/mmntum_darwin_arm64"
      sha256 "9dada7068e5e94c3b5ecde2bf20d92de922e2269312f13ecb4d766e57fb09871"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.11.0/mmntum_linux_amd64"
      sha256 "62df612a2954bbf10f693aff53afeb8298eca81039f36552ce0be42d27a751cb"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.11.0/mmntum_linux_arm64"
      sha256 "44bf125e7e60a736a367eb8bf03da32b1d480beb13982c1997d19fc98584b1fb"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
