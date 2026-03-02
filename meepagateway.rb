# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.35"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.35/meepagateway-0.5.35-darwin-amd64.tar.gz"
      sha256 "e8acb39299210d646faa8a985d3e74821c7e185fdab6af74bda1c555e040bfb4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.35/meepagateway-0.5.35-darwin-arm64.tar.gz"
      sha256 "1fc81294b41d4a93bd2e3c70ddcf562923e0d21951e6c2f08ff629d7c961d6d9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.35/meepagateway-0.5.35-linux-amd64.tar.gz"
      sha256 "55d4ed1fcfbfd6d3f8bd8d2f40c3673d41b918bc57fe0fbdfa9414856453a48d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.35/meepagateway-0.5.35-linux-arm64.tar.gz"
      sha256 "32c17402aafdffbb437ba6e20117ca8a7fcafb4dfe6f3927a21e9f319edf59b3"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
