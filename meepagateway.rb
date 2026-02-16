# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.2/meepagateway-0.3.2-macos-amd64.tar.gz"
      sha256 "23589f4c4e78fdd64b33b70c4a52b1e98b018292a118af7e752630985b75a0f4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.2/meepagateway-0.3.2-macos-arm64.tar.gz"
      sha256 "ff71045e49332f9e1ff789694793afed43253584db710aa9ae9d373a7b8b2eae"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.2/meepagateway-0.3.2-linux-amd64.tar.gz"
      sha256 "ec3e4e3aa196b8f31160c82bb7d79d27a9e5410204422f7c6315c2cf09972ba3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.2/meepagateway-0.3.2-linux-arm64.tar.gz"
      sha256 "e7751de392861f4e31475bf4072f80b5df031d2eb0c80120ffc2f16c7c34a6c8"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
