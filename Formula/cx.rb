class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.7.1/cx-aarch64-apple-darwin.tar.gz"
      sha256 "042b06c2a6f82883c86be668bb094076d80acbbffd6bfcf18629a412b66a50e1"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.7.1/cx-x86_64-apple-darwin.tar.gz"
      sha256 "66c25bf056a7171a8639c8d0e76a4c86a73a2f2dc236d769d4e5c6ed779d20be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.7.1/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55eede82b72ed1cc754be46508649f29c5f3912e2f19dad616c97e44513fafe4"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.7.1/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9cc8226982f4a8d6872f3143094249280af3978caa50dc6ccb5f289bd6bc55c"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
