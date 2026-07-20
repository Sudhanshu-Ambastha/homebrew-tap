class JarCartAT01 < Formula
  desc "Lightning-fast, no-build Java build orchestrator (0.1.x line)"
  homepage "https://github.com/Sudhanshu-Ambastha/jar-cart"
  license "MIT"
  keg_only "this is a pinned version; install jar-cart for the latest release"
  on_macos do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.1.1/jar-cart-x86_64-macos.tar.gz"
    sha256 "17b20501005ec25048dadfa491c200bd385550a158f57d61cd2764d68ef033f8"
  end
  on_linux do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.1.1/jar-cart-x86_64-linux.tar.gz"
    sha256 "589df6309fc36900ef1ef9eaaae0bbf396b108008ea5eaedd49dbbfeb2d504f1"
  end
  def install
    bin.install "jar-cart"
    bin.install_symlink bin/"jar-cart" => "jc"
  end
  test do
    assert_match "jar-cart v0.1.1", shell_output("#{bin}/jar-cart --version")
  end
end