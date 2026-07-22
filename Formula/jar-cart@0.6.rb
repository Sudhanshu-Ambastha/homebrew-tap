class JarCartAT06 < Formula
  desc "Lightning-fast, no-build Java build orchestrator (0.6.x line)"
  keg_only "this is a pinned version; install jar-cart for the latest release"
  homepage "https://github.com/Sudhanshu-Ambastha/jar-cart"
  license "MIT"
  on_macos do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.6.0/jar-cart-x86_64-macos.tar.gz"
    sha256 "862b735e499ca7dc4debe6cdb73a502b197bce6e5cba4e706b8f80d37b9477c2"
  end
  on_linux do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.6.0/jar-cart-x86_64-linux.tar.gz"
    sha256 "c0695979e9eb57078e152932ee0e7081e2ab828947500e1cb99db780c3b13bac"
  end
  def install
    bin.install "jar-cart"
    bin.install_symlink bin/"jar-cart" => "jc"
  end
  test do
    assert_match "jar-cart v0.6.0", shell_output("#{bin}/jar-cart --version")
  end
end
