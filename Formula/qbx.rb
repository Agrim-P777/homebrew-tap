class Qbx < Formula
  desc "Build jq queries by navigating JSON"
  homepage "https://github.com/Agrim-P777/qubex"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Agrim-P777/qubex/releases/download/v0.1.0/qbx_0.1.0_darwin_arm64.tar.gz"
      sha256 "c3bbd8c407a7a864a43d58fcd57f620b08eed0d28aa0e0166f2f7a57cdd8752f"
    end
    on_intel do
      url "https://github.com/Agrim-P777/qubex/releases/download/v0.1.0/qbx_0.1.0_darwin_amd64.tar.gz"
      sha256 "98352bd558e9b85c4d5f978d32b0104f8456ae4e8d4abc2353849d69ae5ed227"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Agrim-P777/qubex/releases/download/v0.1.0/qbx_0.1.0_linux_arm64.tar.gz"
      sha256 "7e09c340b969b71244d93adbfbb4fbd021afca1a6f9056dba6cd0a6df026a52d"
    end
    on_intel do
      url "https://github.com/Agrim-P777/qubex/releases/download/v0.1.0/qbx_0.1.0_linux_amd64.tar.gz"
      sha256 "cb1776c7dc0cd304fe4e0b79ca9b33626234d9effb0e61b00db716d90f1754ef"
    end
  end

  def install
    bin.install "qbx"
    pkgshare.install "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "Qubex #{version}", shell_output("#{bin}/qbx --version")
  end
end
