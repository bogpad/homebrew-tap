# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.5/meepagateway-0.4.5-macos-amd64.tar.gz"
      sha256 "7c6a8e7784176be2d4f2a9ffe3589e883603a76be1c7f65e518e3c9b85da9178"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.5/meepagateway-0.4.5-macos-arm64.tar.gz"
      sha256 "ce8460f9743c8c154f44cdb58016a20ffc7a90f808d3688023121f24c119a66f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.5/meepagateway-0.4.5-linux-amd64.tar.gz"
      sha256 "eb54f3befd22dc384f280a56b4da8b223a2f58f79e9b6d950e306e821b83c3dc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.5/meepagateway-0.4.5-linux-arm64.tar.gz"
      sha256 "bad9511d1f76ed66431be408287365bc38326f734b0f323d83d8432a46b47828"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
