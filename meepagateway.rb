# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.5/meepagateway-0.0.5-darwin-amd64.tar.gz"
      sha256 "7ac25896d4cf88b92cc910a71bc2c20b78209610ed62876f8366407b5e1e3485"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.5/meepagateway-0.0.5-darwin-arm64.tar.gz"
      sha256 "68f3e0101a22b10aeda9295f94669493f6a000b469c8355c76bed9786092d24a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.5/meepagateway-0.0.5-linux-amd64.tar.gz"
      sha256 "8ab57dcb93d2d0bbc120f9b9c9c85d4bf8da7f17fc30c74f119f8ff97b184c7a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.5/meepagateway-0.0.5-linux-arm64.tar.gz"
      sha256 "da73f5ce77f2c51052d61402444c4775c87173dc82cff91e9661b78ad5a5b849"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
