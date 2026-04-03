class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.1-rc2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc2/cx-aarch64-apple-darwin.tar.gz"
      sha256 "934678a58c57f6521403126a84a0f3b69711c65a619e43065670e25f065fd32c"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc2/cx-x86_64-apple-darwin.tar.gz"
      sha256 "b718b3e2c6607b4e3d81a273d706bc2f0543c14c247bf99bc123706c4f6edafa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc2/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a17084fe24d1004c4101d174cc825ed3b97681afd2c963b44971faf8110d3df"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc2/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4e77d4f4b1b59c2702b7276688c460053def58d85a1bcd52706fd755b9bdcee"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
