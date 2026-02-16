# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.1/meepagateway-0.3.1-macos-amd64.tar.gz"
      sha256 "001c1eb5e1711342d0c05b01fb236323bc592d506267ff1192fe9217f8497dfe"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.1/meepagateway-0.3.1-macos-arm64.tar.gz"
      sha256 "38962b7bf08a3378f09040a68ce95ceb23eccd3443976679c16645aaae1f7601"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.1/meepagateway-0.3.1-linux-amd64.tar.gz"
      sha256 "6f6bfe41d91a2b153f850a70e01a3e8c2060459befae49234620f8bfb4060597"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.1/meepagateway-0.3.1-linux-arm64.tar.gz"
      sha256 "290c3ca12f90ea0b4e551cb533969f51a79255bb53f8db7b80a34215e8ad6317"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
