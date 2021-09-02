class Treefmt < Formula
  desc "One CLI to format the code tree"
  homepage "https://github.com/numtide/treefmt"
  url "https://github.com/numtide/treefmt/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "1a8329b4108271c97d70e087ad7648400ae31e0121ff3df93d0e27d98144ad0e"
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
