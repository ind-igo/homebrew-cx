class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1/cx-aarch64-apple-darwin.tar.gz"
      sha256 "8074c56915c3ab38dbbf467da23e0aa3ae4165ae6bcadbbc88038c2b73134848"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1/cx-x86_64-apple-darwin.tar.gz"
      sha256 "a7ad6bd58153d700a37c405e0df73e9eeb4c6b216dd487d1283ab57c2ca66b7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1/cx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7499a1c5c28dd87a10260806c2d7dfd4336a7364fadd1cd7a4fda4c6564917b0"
    else
      url "https://github.com/ind-igo/cx/releases/download/v0.6.1/cx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c7ccec96937744c618bea783f1ac001e1384928159facc5b957af88fddf7b12"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
