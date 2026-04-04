class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.3/cx-aarch64-apple-darwin.tar.gz"
      sha256 "72d3e358e0544668964425ff2fac778b7fff8a532b8fbda84c7b6310e4290dab"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.3/cx-x86_64-apple-darwin.tar.gz"
      sha256 "215c6a9d564d19aa2c7bc612ee57296f48750265a3aa24026415287b21605e56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.3/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea1f0ca53e6bf41b939ce8731d95ce1a312836eb45d7cf85edebe5f90b3a4a62"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.3/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df0060f8614bd6c93f92a94704dd86bace9cdded781c9f5dda372a33bb6ed008"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
