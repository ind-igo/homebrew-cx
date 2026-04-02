class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  url "https://github.com/ind-igo/cx/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "1c18d0259c7ffc8fe118e2c993526ea88ceefb90b6a18445cd4f3e5352a5c12f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
