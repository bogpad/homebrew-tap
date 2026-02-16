# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.6/meepagateway-0.3.6-macos-amd64.tar.gz"
      sha256 "f894ed87e7202118e227fd49b32db0aa55f8f2b11348a419d758252399aeece4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.6/meepagateway-0.3.6-macos-arm64.tar.gz"
      sha256 "d0e69cab75552d72f862697f7a9638ce9c183f3936c7373cf4ad473e5b128c02"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.6/meepagateway-0.3.6-linux-amd64.tar.gz"
      sha256 "b46b2b75bd6c69457b4dcba6fd0603ebd5d87f00dae28a1e3a661483415e6585"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.6/meepagateway-0.3.6-linux-arm64.tar.gz"
      sha256 "e32f01a041c1c037aee0fe78ead47a4bd1b9368084aea14fcc5b7931851a5069"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
