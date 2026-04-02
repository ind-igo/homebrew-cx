class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  url "https://github.com/ind-igo/cx/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "79c2c654b62665c4d4a6c2ba20dd9d9e0d58750ecea60e2e53955b1af1625a31"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
