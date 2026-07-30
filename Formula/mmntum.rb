class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.16.0/mmntum_darwin_amd64"
      sha256 "4370261dc6e4735da6d911632ca5fccc77ad9c10e8d6ed45a0d597e7c60e0c5e"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.16.0/mmntum_darwin_arm64"
      sha256 "80c5fd6426b0137670e08e907f9d9926c628eafb041e688484f3e93e3b3bbae6"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.16.0/mmntum_linux_amd64"
      sha256 "de06ae1f0374d486267f5210616c4779512d43129bfab65118858eb95e709082"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.16.0/mmntum_linux_arm64"
      sha256 "a5f7b85a8528d25ee435fedaa2a8c2a5651de8875aa3b51f0b5327f1ffd8426a"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
