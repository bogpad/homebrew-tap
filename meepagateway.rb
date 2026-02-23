# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.43"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.43/meepagateway-0.4.43-darwin-amd64.tar.gz"
      sha256 "835cb65d65284d23e780d504959baac76405ca53693755d5fb1672931481210a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.43/meepagateway-0.4.43-darwin-arm64.tar.gz"
      sha256 "d11b1be780c3d59b8a9312100fbdb98894f9113e0c18d45086822ef355d694df"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.43/meepagateway-0.4.43-linux-amd64.tar.gz"
      sha256 "6ad8a4d21b0ec17a45a9ad17801fa5d3c14d29dd63adf986a62be9ef3b3aaa11"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.43/meepagateway-0.4.43-linux-arm64.tar.gz"
      sha256 "71f7edfb3a4eccf416a7d609c440c4a0cdeec09ccc3592c12adef95a0b824f26"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
