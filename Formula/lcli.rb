class Lcli < Formula
  desc "CLI for Linear issue tracker"
  homepage "https://github.com/pvarganov/lcli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pvarganov/lcli/releases/download/v0.1.0/lcli_darwin_arm64.tar.gz"
      sha256 "c7f0624bf6d2738d29efecd6916ad911aa9f751a74dd9cd5547a9499b3557af0"
    end
    on_intel do
      url "https://github.com/pvarganov/lcli/releases/download/v0.1.0/lcli_darwin_amd64.tar.gz"
      sha256 "018c8735ef0976f39e1a9601d395183e9c31c31108869330bad7519b614735de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pvarganov/lcli/releases/download/v0.1.0/lcli_linux_arm64.tar.gz"
      sha256 "82caa98c17c63767784c0338c8ddcb96ca788047298a5eb99221648be4dc4cd9"
    end
    on_intel do
      url "https://github.com/pvarganov/lcli/releases/download/v0.1.0/lcli_linux_amd64.tar.gz"
      sha256 "de215d01063acba2114256a607716c63abfc90a379ac0a72dd483c0e047dfec3"
    end
  end

  def install
    bin.install "lcli"
  end

  test do
    system "#{bin}/lcli", "--version"
  end
end
