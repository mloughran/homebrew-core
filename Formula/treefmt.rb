class Treefmt < Formula
  desc "One CLI to format the code tree"
  homepage "https://github.com/numtide/treefmt"
  url "https://github.com/numtide/treefmt/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "48554e1b030781c49c98c5882369a92e475d76fee0d5ce2d2f79966826447086"
  license "MIT"

  head "https://github.com/numtide/treefmt.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", buildpath
    bin.install buildpath / "bin" / "treefmt"
  end

  test do
    system bin / "treefmt", "-V"
  end
end
