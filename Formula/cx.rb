class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.7.2/cx-aarch64-apple-darwin.tar.gz"
      sha256 "3ea260126d2942d7f1f084bd4afabb2e0ed25323d040a93db7081891f489fdda"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.7.2/cx-x86_64-apple-darwin.tar.gz"
      sha256 "4b942a0f8ae8db3fb5ebdec265ff02c5c23e50448e22c4190a7573a10b94ff4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.7.2/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4802e6827ad37d6a194f9374b53bbfe732ea73569dcfccc13937ebc242602d0"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.7.2/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48a5bc9f5453f5a4f9bc9d29bc2687e130691f2a0920bb57de58bd3c726bc899"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
