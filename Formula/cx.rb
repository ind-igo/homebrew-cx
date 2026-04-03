class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.1-rc3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc3/cx-aarch64-apple-darwin.tar.gz"
      sha256 "e8b9857bd59f8af70add7e1712e0f1bb6470dab6214f4bf4e86f91830948733f"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc3/cx-x86_64-apple-darwin.tar.gz"
      sha256 "b87a77c08fb95e4896cb8967cc0eeff4c2092050e31f7391b6260c8309eccf7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc3/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3fa4f3d6d3c51cb8b9e18f5c4c9ce1a3071cdcec41a2241a801d02ccedff6a37"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc3/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37690b8ae29708999003127757076cfa1dff25d2580b6bbad89fd74237f20888"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
