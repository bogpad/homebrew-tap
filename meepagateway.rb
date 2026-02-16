# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/homebrew-tap/releases/download/gateway-v0.2.0/meepagateway-0.2.0-macos-amd64.tar.gz"
      sha256 "64f9e65b5926660e80b0321b5bd6aefc1c8f7c9b16c89b5ff7404a1646da3c5b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/homebrew-tap/releases/download/gateway-v0.2.0/meepagateway-0.2.0-macos-arm64.tar.gz"
      sha256 "a4ed27bde0dbec54fc8e54592a9e3517fc2c2bd64c8a352053faf04021a5044f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/homebrew-tap/releases/download/gateway-v0.2.0/meepagateway-0.2.0-linux-amd64.tar.gz"
      sha256 "8f2604999db2ec93277bace84ee9285112daecb23f6198f107a30b7fb7d1fa9f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/homebrew-tap/releases/download/gateway-v0.2.0/meepagateway-0.2.0-linux-arm64.tar.gz"
      sha256 "ded1224e6cbdbc204765b662d533a02e3bc9167e5b632d952e6a36dd248f34a8"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
