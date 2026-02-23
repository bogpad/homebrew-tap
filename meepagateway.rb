# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.46"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.46/meepagateway-0.4.46-darwin-amd64.tar.gz"
      sha256 "815cbe0cade5aedf702e5d6057e0c0f0f0a8c6c14cd01c9e879f3e0b1a06c07f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.46/meepagateway-0.4.46-darwin-arm64.tar.gz"
      sha256 "b1f92d59e24a0bc0ebc631f4c6b55e805a6f2b1f4571bfc938e9e44d676b701e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.46/meepagateway-0.4.46-linux-amd64.tar.gz"
      sha256 "5471efb346392f3293c9893fb05faf97d319131c400de9ee0c6de70462842d29"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.46/meepagateway-0.4.46-linux-arm64.tar.gz"
      sha256 "e4bb2683380d689936bf519d18bc6de84583e1429fccdb28c1d76a48d6fb6616"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
