class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.9.0/mmntum_darwin_amd64"
      sha256 "5719de2cfe2aeb298ab5664ca4fb587fe46d85ac47a268465d81607a76973156"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.9.0/mmntum_darwin_arm64"
      sha256 "7c7c6e20525764f11970063680973dd21562f25eaddc3fd610e1265201d7340e"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.9.0/mmntum_linux_amd64"
      sha256 "ab75f16fa4f689b225eaebc229db5b00c25f435ab1b9b993fee4b4eeda2434d4"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.9.0/mmntum_linux_arm64"
      sha256 "4b8eb7a44c83894fcc822ad5d9f545131f9a4f93fab017bfd394d7ce2202a6d6"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
