class JarCartAT03 < Formula
  desc "Lightning-fast, no-build Java build orchestrator (0.3.x line)"
  homepage "https://github.com/Sudhanshu-Ambastha/jar-cart"
  license "MIT"
  keg_only "this is a pinned version; install jar-cart for the latest release"
  on_macos do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.3.2/jar-cart-x86_64-macos.tar.gz"
    sha256 "b6d31dfacb8228aa182bb24217a19775c0eb7a48295a6bf027a0d463d42a4dc4"
  end
  on_linux do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.3.2/jar-cart-x86_64-linux.tar.gz"
    sha256 "a6945da336981c3a633596a416467b6d3eac49aebd43e31632508f93fbe14e44"
  end
  def install
    bin.install "jar-cart"
    bin.install_symlink bin/"jar-cart" => "jc"
  end
  test do
    assert_match "jar-cart v0.3.2", shell_output("#{bin}/jar-cart --version")
  end
end