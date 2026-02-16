# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/homebrew-tap/releases/download/gateway-v0.2.0/meepagateway-0.2.0-macos-amd64.tar.gz"
      sha256 "585d626922b545458f3e201519570b3cf05194b216aef380c8420d92bd9ad811"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/homebrew-tap/releases/download/gateway-v0.2.0/meepagateway-0.2.0-macos-arm64.tar.gz"
      sha256 "22fa086a0b726e7849280c9065b7ec4bda05acccf2f5a94158cb4b3964286b41"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/homebrew-tap/releases/download/gateway-v0.2.0/meepagateway-0.2.0-linux-amd64.tar.gz"
      sha256 "b8e3a75695f3b960662b6bc4303ec25df09bd8fb142ab5bd4354e6b5f761c397"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/homebrew-tap/releases/download/gateway-v0.2.0/meepagateway-0.2.0-linux-arm64.tar.gz"
      sha256 "86fce88884e754044d0cadfdda5ccd834b0294f36bc94e47506251141a494e2b"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
