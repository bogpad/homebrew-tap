# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-amd64.tar.gz"
      sha256 "ac3bab3c0ee6addbdbccd94dd25bd931d21897f85ad63687455de4941fb7b48a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-arm64.tar.gz"
      sha256 "3c53b9e1c02662d9bc93a0dd93a6c2220b6420c8f5ef1ed404e71b30a51943cc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-amd64.tar.gz"
      sha256 "533dbd256c62bde5122d96e5a71fa8107cb89323240b3e8b9fe70fc02052716f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-arm64.tar.gz"
      sha256 "30e50304d3cd840a9eb70bff902ffc6c3e1d0011f1e8b62839f0f388d78fb344"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
