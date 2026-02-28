# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.13/meepagateway-0.5.13-darwin-amd64.tar.gz"
      sha256 "f39a8236a2ebe538b7d64dbe8899f19240dac2989d5bfc91440be5a8efc2f3c7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.13/meepagateway-0.5.13-darwin-arm64.tar.gz"
      sha256 "1f40415415e456240f436d342c658c06be573e64d07fffcefc7cba570cd32ab2"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.13/meepagateway-0.5.13-linux-amd64.tar.gz"
      sha256 "e9efad8aa0d5ed435b3eafa03e0aae16437926702243b9b975523d2027d62642"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.13/meepagateway-0.5.13-linux-arm64.tar.gz"
      sha256 "f86f3be306a0e4e7500d7b81ae35d3eb21938c9eba2a3176564d8219d5949a8a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
