class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.17.0/mmntum_darwin_amd64"
      sha256 "aaaef553e909fc88f56f759e96b17b7a6b1121f31ef8bb38d28f97dd33cbee80"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.17.0/mmntum_darwin_arm64"
      sha256 "0d90b55db4948c4d72e7419dd1c9a5c9659b91f88148da9e68e464a014e7f221"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.17.0/mmntum_linux_amd64"
      sha256 "1e98c36c3e7b3a7f7aa5ce025216987e61d93eab2aa8d39822c4a7bb36711b2a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.17.0/mmntum_linux_arm64"
      sha256 "cd7ba0a39461f3cdad84e2dec51c3b5104b385c79e6f45462b0a225f0a73f93d"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
