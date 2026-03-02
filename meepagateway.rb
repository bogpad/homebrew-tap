# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.28"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.28/meepagateway-0.5.28-darwin-amd64.tar.gz"
      sha256 "3ea0087c14254d09c183b4831ce0600678b01c222deb6008780423ee38965d6e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.28/meepagateway-0.5.28-darwin-arm64.tar.gz"
      sha256 "c42920c3690fc5846b8118eb89ede756b4f31910e081123dfe0b117fe10bf3e3"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.28/meepagateway-0.5.28-linux-amd64.tar.gz"
      sha256 "6335078e0da97c72fdb343d22c8d1f6174fbda38a2b512d7ae3983ee9b56b494"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.28/meepagateway-0.5.28-linux-arm64.tar.gz"
      sha256 "b627df0044def51dda7e13e56b9e964fc341bd42a9024a1fd5baa75dc50cccca"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
