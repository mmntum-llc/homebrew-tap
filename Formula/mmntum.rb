class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.22.0/mmntum_darwin_amd64"
      sha256 "e4ddc3eb2e1f8eb656d9f87d7f6415f43843d2dd538eada4dd770dce19986de4"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.22.0/mmntum_darwin_arm64"
      sha256 "c71384665024711427663b4fbe5ec9aaa5de2907538cb063abf99808f45de2d5"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.22.0/mmntum_linux_amd64"
      sha256 "487ce83710162a82af45ca4c6fcdc838a87feba6ec21171407a0f032f658fcf9"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.22.0/mmntum_linux_arm64"
      sha256 "98b2938ba9879418da2ab5ae73ffbbf6c5d06da5c29404e7d6f27502ce2f06ae"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
