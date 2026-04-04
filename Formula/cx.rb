class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.2/cx-aarch64-apple-darwin.tar.gz"
      sha256 "4b1a62abc63fff9fd97ee02849cd5fa2244e61b7d892374d0ec5b08088d5bcf3"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.2/cx-x86_64-apple-darwin.tar.gz"
      sha256 "5401c40993280461eff3a992012129ba53d5e3f73a9611f0591bcbed33a4df20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.2/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c1f5202319e400ecc7ebb2eafbdf52b073f94b5d2c67b725ad16ffbed27e3d4"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.2/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e27707880ab87617303b3c294bc57a066d257adf10dbc2807d40b22d2f8ecfaa"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
