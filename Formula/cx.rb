class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.1-rc5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc5/cx-aarch64-apple-darwin.tar.gz"
      sha256 "1922fdaff404574b850560b17dad02276cfe5419b9bb176da25e14d32b49666e"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc5/cx-x86_64-apple-darwin.tar.gz"
      sha256 "f3f9a5e0db74e06dbe0cd107972a14dab6b4171ce3c49cb1e28cd6ceaabed0f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc5/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7c18cc5730e641d8f1f89d6e225270b0684a65456bec0a5300b145dd541a742"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1-rc5/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ac5b9f77ecd50a879b11e6fc61f23dd75a10f1d47109f38cc51aefbea0ae54f"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
