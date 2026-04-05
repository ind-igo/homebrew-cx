class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.4/cx-aarch64-apple-darwin.tar.gz"
      sha256 "6c4a142f97445f0e6ab908cf9c7e62714dc10bdf61619484b4dae906d9f6a863"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.4/cx-x86_64-apple-darwin.tar.gz"
      sha256 "d7d2f8dfddfea7a1f3cb526ad0b21dbaead8225690569a5a8039b54e37501542"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.4/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e21a85b4f74dd936436a33eff0903f23eff29dfc14ae4526a8fc393cca4d3bcc"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.4/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4668727f10abb48f041e109ef8e156320778f4040e19bf5d705ffc896d6371a9"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
