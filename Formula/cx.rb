class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  url "https://github.com/ind-igo/cx/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "f7304df170d5297dd74038c9245b8726f0bb7c57d69ffc8d16c2258a92f9a7f8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
