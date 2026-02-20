# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.30"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.30/meepagateway-0.4.30-darwin-amd64.tar.gz"
      sha256 "05522a6aa49c9aacdf99b50dfd3c0c819ffbfe8c4fabb1cca3b953a26cdb135b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.30/meepagateway-0.4.30-darwin-arm64.tar.gz"
      sha256 "62dec390dcfbb04e4c92c95412fd27c0e0967310d1e246916f3fc7ee02f1ac8f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.30/meepagateway-0.4.30-linux-amd64.tar.gz"
      sha256 "e35d7fe414a657712efb61b5009c1c30a0438a9c6fe12f561a8171c5cf3f5c4b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.30/meepagateway-0.4.30-linux-arm64.tar.gz"
      sha256 "93b61b366ed415ffa99bdc6d699ac80e04e029b65716bbbe116e6c32ae4739bc"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
