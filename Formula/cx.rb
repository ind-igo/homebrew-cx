class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.1-rc4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc4/cx-aarch64-apple-darwin.tar.gz"
      sha256 "18014d65a00f4a033fe1b6f78197f9043cec1ad59aef6e7a9f274d0076edb144"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc4/cx-x86_64-apple-darwin.tar.gz"
      sha256 "7f28e06b9a13668d524fec24d9677210bc7357e2c8f6c59bf0d596d17c0745be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc4/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29f417514a53bbdb74e9de791f3ad43f9d504225c3ca7a85de6fc7b2d54434bd"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc4/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5225f3317a1a0eb0064da65df1fcbb85376742469343e2199dccfd99a38c1e9"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
