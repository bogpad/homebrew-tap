# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.30"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.30/meepagateway-0.5.30-darwin-amd64.tar.gz"
      sha256 "b1172b3f4cef0464359bb27cc22667053e975ae253831b913b3b6fa1ee581a6a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.30/meepagateway-0.5.30-darwin-arm64.tar.gz"
      sha256 "d6e6d4e570d5c96e077f955e004139317552f117da3fc729218f071e959e2be8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.30/meepagateway-0.5.30-linux-amd64.tar.gz"
      sha256 "52f100e2ff674b0ee83a8be02de01ece0266de446ab68c168b330ddd045b75a9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.30/meepagateway-0.5.30-linux-arm64.tar.gz"
      sha256 "9787e2935ac6a2e3af4c8f08509fe195a4fab07b0df81461af047255850db6d8"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
