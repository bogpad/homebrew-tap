# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.11/meepagateway-0.5.11-darwin-amd64.tar.gz"
      sha256 "29147d0bb00782566fde04dbf6719f54a4f62ba68771434e67a7376ffe147f86"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.11/meepagateway-0.5.11-darwin-arm64.tar.gz"
      sha256 "37da6e6310af82d3f5625614fc9aad0ba37fb4fc96953bb6df3286847da91536"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.11/meepagateway-0.5.11-linux-amd64.tar.gz"
      sha256 "11f61ead61ea58cf7b8ccc2946b2922369099d0780a8288115e4526cdabdcc32"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.11/meepagateway-0.5.11-linux-arm64.tar.gz"
      sha256 "51cd905f0433dd83bb057ccd64b3c2a24c38895523b6a3f3edda5c3f6730f1eb"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
