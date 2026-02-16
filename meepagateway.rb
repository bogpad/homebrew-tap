# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.0/meepagateway-0.3.0-macos-amd64.tar.gz"
      sha256 "74581736037dd409bbe123255e39f0c7aa0f338e5e6f77da166ab8770df10ca9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.0/meepagateway-0.3.0-macos-arm64.tar.gz"
      sha256 "e101071504d29bd06d778c0472b2b3e366a229edba0e9edb747034d397b75fad"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.0/meepagateway-0.3.0-linux-amd64.tar.gz"
      sha256 "1a899c2a9ba6bb0fca196ef9bbf4e5180b55d88a078690b60dfc744a4b5980ed"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.0/meepagateway-0.3.0-linux-arm64.tar.gz"
      sha256 "c8f5d72f9ac5412aeab5db02d7ecd04733d923db12ccb75dd4f07c10cb5f463f"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
