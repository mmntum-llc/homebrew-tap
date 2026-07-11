class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.1.0/mmntum_darwin_amd64"
      sha256 "26fec58ba5021525a5c728ee6f63fadc8c87b5a76afe60cda413fd25637d7498"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.1.0/mmntum_darwin_arm64"
      sha256 "241e7b7b75c8681f462584002a53d5b9d267c28713c6d6f6c936a9d7f705e762"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.1.0/mmntum_linux_amd64"
      sha256 "e99f2ece61e20af984f8ec2fb4c656c409862d3ff181c04e584bff35b4524919"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.1.0/mmntum_linux_arm64"
      sha256 "63de905119a4e2e28715a8945420896f932347f68534aa73184053e627709717"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
