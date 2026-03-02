# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.34"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.34/meepagateway-0.5.34-darwin-amd64.tar.gz"
      sha256 "5448ff0079269aefa941007f69b389f89c4edc91298a3802978a1375ebcc5620"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.34/meepagateway-0.5.34-darwin-arm64.tar.gz"
      sha256 "e22abb64e377aec9f42038a0d340ae50a0b0984a34cb0872ddc01d93302d794c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.34/meepagateway-0.5.34-linux-amd64.tar.gz"
      sha256 "3d180b9a09b48048bccdbca87b110bf1fdf8b66620efca67717f6cfe0ee572fa"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.34/meepagateway-0.5.34-linux-arm64.tar.gz"
      sha256 "041e6bea430d83c9e0925a1a1cb7fb7fbe4d01d7b1b37362986fbff748f256c1"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
