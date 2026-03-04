# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "b137a3de40a1e088c9339340e3a7d4fa61bda7996e5ebfea6e37b7e8b15db45d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "c22ffc9fefbe7957a038e70785ab1206b0e9c9a33e823ba52bd8d807ed0a2001"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "65e978c118a553da0bcb2f6429e2730dc1186c52592a21ae29673e827b0e4651"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "a9e58b5059c0c7bb1cd6f2ce2fc2891baf70eeebc7317b7c114c2527da4d21f3"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
