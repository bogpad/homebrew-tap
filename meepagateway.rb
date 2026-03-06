# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "580adc8e3c21b5c01e86b43b4b16f7184975c42ad7de668bc18b4f10f566ede1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "c65d0a9f7046ab99bb4f92b6a6b14d0b703facb66873952818ba7ed8c5588d19"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "c03093d302f14868861772020955179e1fae6c52d9366dd76126e2c67832c332"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "9ff8bc8f5bbedcab0b98d5a055053055d18393a5667f3b5fec255c8209394c46"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
