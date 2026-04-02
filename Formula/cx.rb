class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  url "https://github.com/ind-igo/cx/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "9e3455f39c668e6991e8de0ff6232ebf2c8de90db6ac442733677e9997dfe512"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
