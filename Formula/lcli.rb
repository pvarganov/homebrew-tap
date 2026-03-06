class Lcli < Formula
  desc "CLI for Linear issue tracker"
  homepage "https://github.com/pvarganov/lcli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pvarganov/lcli/releases/download/v0.1.1/lcli_darwin_arm64.tar.gz"
      sha256 "5edc9ca1f281174263c3a1b7070475aa07bc4eb2afc644b7848ff75becd633ca"
    end
    on_intel do
      url "https://github.com/pvarganov/lcli/releases/download/v0.1.1/lcli_darwin_amd64.tar.gz"
      sha256 "193723eb924d654e3a233251cae48eba6a23ff97aa361879ca700944a50b056d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pvarganov/lcli/releases/download/v0.1.1/lcli_linux_arm64.tar.gz"
      sha256 "fd4925498fd3791ab9756facb93f12721492de3a0f9b65350128cca281fb3779"
    end
    on_intel do
      url "https://github.com/pvarganov/lcli/releases/download/v0.1.1/lcli_linux_amd64.tar.gz"
      sha256 "421f61b7688a4f923e410d3304d0e4becde107856ec8ca6f9874f23f0941c742"
    end
  end

  def install
    bin.install "lcli"
  end

  test do
    system "#{bin}/lcli", "--version"
  end
end
