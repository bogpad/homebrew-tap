# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "1ac3fc83493127cd1040c91ae4e727d5d63f4cdc81c4bd90c9c7d3862e31c9b4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "ef8b9291e9fa6b5ad370ac2ad5e5a3897076bef78bca695c4727e2c5c3fce721"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "19ea7f63a2610e7d5481131d1b26d2e03f1fbf4014c650470b0ac7b2a1e3b831"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "cf184600dad5b77cb9f49c940cc96e822f3bb2f0c0802698288ba5fdb1617ee2"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
