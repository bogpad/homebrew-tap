# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.5/meepagateway-0.3.5-macos-amd64.tar.gz"
      sha256 "b24cec359f528189acbd291f4cdbdfaf416dbb09d859e877a1989d7367bcf613"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.5/meepagateway-0.3.5-macos-arm64.tar.gz"
      sha256 "abb2126e5e7ba1a3a39d283f5eecc1ff09b4ae948af0e916553d5f69590c64ac"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.5/meepagateway-0.3.5-linux-amd64.tar.gz"
      sha256 "63ae0e93c21cb4e963694c7a5cc7ba022118bacad3fc44d6019010833a9b72d9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.5/meepagateway-0.3.5-linux-arm64.tar.gz"
      sha256 "3eeedd696a5af8db5d4ea5ea53c96d2fc10ba4f88c00270f068a5d21de1afd67"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
