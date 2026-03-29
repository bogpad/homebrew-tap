# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "9b21f308f47a9445604bcd88cf20b79204953c51c8db4e1432e2f76d4c1d50e6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "3d4579e568a425ebf9323f6fab35eb64265d5dc344fae9ef69e7ca1aaca3b6ed"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "f5ec0aa45cdc9e5bebd1e7e486dce2a27c423db228f72d2d7fd02bb74950a378"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "59f0b7ef7a60a82398e9b820b26482c8750406f5ea0fc9d3d9a2b47092a17c36"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
