class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.26.0/mmntum_darwin_amd64"
      sha256 "e7e2800f40c361b09de6b49c42a21aa9a9fc95149d2719cf4ffa3f8f87d19a2d"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.26.0/mmntum_darwin_arm64"
      sha256 "239b0a8525a11b43380af99b44e797583d3b86b00d61580b2cbace98d455dacb"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.26.0/mmntum_linux_amd64"
      sha256 "aad86e20e7cd0aea2011fa80b95170263a14f47f25bcd634f80b3774927584a9"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.26.0/mmntum_linux_arm64"
      sha256 "adfb62ff61f9761e0611644be9535a98ea7f62c146e24b4b8f3ef447909f338e"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
