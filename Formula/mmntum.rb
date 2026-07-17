class Mmntum < Formula
  desc "MMNTUM operator CLI — integrations tooling and MCP server for AI agents"
  homepage "https://mmntum.ai"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.7.1/mmntum_darwin_amd64"
      sha256 "f476147a63eefa04e2be57cd696677c6015ebb84edb390bc9090eca59248c933"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.7.1/mmntum_darwin_arm64"
      sha256 "e0af02bea095851184a502dd834c74f6832a073acb42348d7149e6b285396578"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/mmntum/v0.7.1/mmntum_linux_amd64"
      sha256 "fb22e2b65e1461b17f008b7622c8bbeed67edde06c26454028a2a2c8af5e7f99"
    end
    on_arm do
      url "https://shiftstack.ai/dl/mmntum/v0.7.1/mmntum_linux_arm64"
      sha256 "7608b108631462ef2a241e4f90875fd6a39f0893d49a61106c92d9cab8c2a56c"
    end
  end

  def install
    bin.install Dir["mmntum_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "mmntum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmntum version")
  end
end
