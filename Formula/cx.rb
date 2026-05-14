class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.7.0/cx-aarch64-apple-darwin.tar.gz"
      sha256 "388edbd907c3cf43aafc07f953cb73551f7587b223c58de03ea162ea0a946288"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.7.0/cx-x86_64-apple-darwin.tar.gz"
      sha256 "ddcd12b4c0e4a91b4b287e9e76565d94153831e1f318021dd2e0022ea983c4f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.7.0/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfc7c4994276a56c1a8ab64c243797a6405697d9c36422180e645db99e371f50"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.7.0/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c2ceea006f06b9057b4e805af8d762a70ecd6a827bac8fd269d3b61ea778e07"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
