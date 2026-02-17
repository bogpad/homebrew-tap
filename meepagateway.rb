# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.14/meepagateway-0.4.14-macos-amd64.tar.gz"
      sha256 "76ee8827249684ff4f7466b9e7fdc3d6274155b1f127d5d6429f4d960a15f18f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.14/meepagateway-0.4.14-macos-arm64.tar.gz"
      sha256 "901d39731d9b444b9e81ddaa440da5bc9fb0f5d2c79bc3b99727b08e617e2645"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.14/meepagateway-0.4.14-linux-amd64.tar.gz"
      sha256 "535fd75e15b9686e426b9f0532b14123cd87905e151d9505703f8fca801e590f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.14/meepagateway-0.4.14-linux-arm64.tar.gz"
      sha256 "55d147ede51c9d37fc95d0b3806cd91e89c0e780cbecf5238211d754845897a5"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
