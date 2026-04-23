class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.5/cx-aarch64-apple-darwin.tar.gz"
      sha256 "45b6a20b6518a28d7331943310c375a347599a3f7345559aeeace9026ac62920"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.5/cx-x86_64-apple-darwin.tar.gz"
      sha256 "896cac011427c66f1e046520f8838d1355d26718f25b927848a05bc16fff967a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.5/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "513da7e67ac1bc0126ba223e4fba8290dfb698822345f5a0bf498b775172ace0"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.5/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "826ea5740326fb02fcaa9bbe6a794f4262dcf48f1e94fba6737bc2b61136a688"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
