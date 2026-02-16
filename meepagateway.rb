# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.1/meepagateway-0.3.1-macos-amd64.tar.gz"
      sha256 "24aef2c71f3d678fa56ce4a834af9b3f2fd7876d53d61ad03e419f9a16e88072"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.1/meepagateway-0.3.1-macos-arm64.tar.gz"
      sha256 "9352805f4398808fbe4f58dd5e3073190a0b6ddc9c8c02a38d8ebf31772dbbd9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.1/meepagateway-0.3.1-linux-amd64.tar.gz"
      sha256 "fce708bfbed85b34a902046bed0f764a53f469c3fd7e15486eb0b6a4d3f47f13"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.1/meepagateway-0.3.1-linux-arm64.tar.gz"
      sha256 "022d89ca10c821b68939d8056dc03f3da69a19a4ac950bd691ae4fad49bc4de9"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
