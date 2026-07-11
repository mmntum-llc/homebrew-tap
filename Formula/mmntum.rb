class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.7.0/mmntum_darwin_amd64"
      sha256 "546166911182443d798415220bd1b2d747f6869a6b56392f8c4a5f27c95b10ff"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.7.0/mmntum_darwin_arm64"
      sha256 "c27f851a0e7793a118348364b1715583445c6d2ea31a8c9203de8da28c547a13"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.7.0/mmntum_linux_amd64"
      sha256 "61e0a6b3a477c9935477a166e8e2346cf8df2cd3add35edb627d56604e8058f1"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.7.0/mmntum_linux_arm64"
      sha256 "3d06f7d8a2f656432034706acc44aa7f37247526bd248905fc5c91d5b30df5c4"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
