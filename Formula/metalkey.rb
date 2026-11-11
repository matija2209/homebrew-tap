class Metalkey < Formula
  desc "Fast GPU green-screen keyer for Apple Silicon (Swift + Metal)"
  homepage "https://github.com/matija2209/metalkey"
  url "https://github.com/matija2209/metalkey/releases/download/v0.1.0/metalkey-v0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "d24bf856a542fffa014b6c4a0da97f1ee4d896ef584e7b79a8bc04f93ec26252"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :monterey
  depends_on "ffmpeg"

  def install
    bin.install "metalkey"
  end

  test do
    assert_match "usage: metalkey", shell_output("#{bin}/metalkey --help")
  end
end
