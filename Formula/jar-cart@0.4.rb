class JarCartAT04 < Formula
  desc "Lightning-fast, no-build Java build orchestrator (0.4.x line)"
  homepage "https://github.com/Sudhanshu-Ambastha/jar-cart"
  license "MIT"
  keg_only "this is a pinned version; install jar-cart for the latest release"
  on_macos do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.4.0/jar-cart-x86_64-macos.tar.gz"
    sha256 "0672d1a03faf93ec712821f3588c72fa16783817a0cab91fc31b8841d7bc3aae"
  end
  on_linux do
    url "https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v0.4.0/jar-cart-x86_64-linux.tar.gz"
    sha256 "aef67d9ca41ad88d426bdb00d7933d41734f759a15407ae50b7e55c8573669d9"
  end
  def install
    bin.install "jar-cart"
    bin.install_symlink bin/"jar-cart" => "jc"
  end
  test do
    assert_match "jar-cart v0.4.0", shell_output("#{bin}/jar-cart --version")
  end
end