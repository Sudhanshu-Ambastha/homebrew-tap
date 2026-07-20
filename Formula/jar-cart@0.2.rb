class JarCartAT02 < Formula
  desc "Lightning-fast, no-build Java build orchestrator (0.2.x line)"
  homepage "https://github.com/Sudhanshu-Ambastha/jar-cart"
  license "MIT"
  keg_only "this is a pinned version; install jar-cart for the latest release"
  on_macos do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.2.3/jar-cart-x86_64-macos.tar.gz"
    sha256 "8f5463c4baac6ab46788d39ee58b97de4f47b5dee84e903fa76716a0a44f0c38"
  end
  on_linux do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.2.3/jar-cart-x86_64-linux.tar.gz"
    sha256 "22342d178ba8a5b5b7287b451a9fa9175edef4ad20f62a9495c3d72cc51ff5ad"
  end
  def install
    bin.install "jar-cart"
    bin.install_symlink bin/"jar-cart" => "jc"
  end
  test do
    assert_match "jar-cart v0.2.3", shell_output("#{bin}/jar-cart --version")
  end
end