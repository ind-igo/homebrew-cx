class Cx < Formula
  desc "Semantic code navigation for AI agents"
  homepage "https://github.com/ind-igo/cx"
  url "https://github.com/ind-igo/cx/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "500cd73d5a8e4e5d30a3199ecf252a5341ad7b3cef5aa85cd6dec098dc541021"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
