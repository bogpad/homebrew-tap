# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "2bf51b6ef6a53e2c329cc869f5bc2121328ba92ba83f83dc0aeed05a381a07bb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "2ca5f2973dd482b60106a3d2c26cbab872253b5d32b0991914b3ebb32ea8b8b9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "b0dd7d86a33e1fa9f744fca9c9ecd3b4b526ee752dbc52f11c8438e0cd374290"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "bfc4c7ac23fa62b439c5ca0145a9cd338e24de1e1338ff4dca0e2536b6591c85"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
