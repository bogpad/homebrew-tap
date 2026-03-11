# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "3d053c8ddc1314ad4a40de6a685a9cbd06d30b17f026b291109b514bcb8afa65"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "66b7509f70431de994bac26c0a1ab329ea8fe87e1e24ba88aa455abaa4e495c0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "090072afd9ea8d2a679c270f75c5f6aa424650ce6b9d579977c62615066a5864"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "3597b3f9807c59cf7a2d8c20c6fd44228f67ff405a5b4f9f5dfb6c9d84615955"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
