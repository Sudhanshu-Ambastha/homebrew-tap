class JarCartAT05 < Formula
  desc "Lightning-fast, no-build Java build orchestrator (0.5.x line)"
  homepage "https://github.com/Sudhanshu-Ambastha/jar-cart"
  license "MIT"
  keg_only "this is a pinned version; install jar-cart for the latest release"
  on_macos do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.5.1/jar-cart-x86_64-macos.tar.gz"
    sha256 "e937dc4b2351731fed17002d898db3563276b853ab035a8a2c9f1b9d510c7070"
  end
  on_linux do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.5.1/jar-cart-x86_64-linux.tar.gz"
    sha256 "713ed96c134dc3cf8695865ef4b6cf55f2bfe00dba8d9f6b1c2e3ce80c3f53da"
  end
  def install
    bin.install "jar-cart"
    bin.install_symlink bin/"jar-cart" => "jc"
  end
  test do
    assert_match "jar-cart v0.5.1", shell_output("#{bin}/jar-cart --version")
  end
end