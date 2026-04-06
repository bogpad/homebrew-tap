# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "4c407af6fdd0f46fda095c1ad2816bc5e2ed4428a4bc4b96a4f436456dc7bc69"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "b4d159a05d5e44b2e278f14f7b7468d6cbe189afa7e3d27b5345703ec1be5bd9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "b9d5d3973604147268a61de30dd65f170c854c8710dd5d2089c4d48a0f3ac4ad"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "ff476fbe8062226a64c8f41ee78af689637fc93e28d344865bd3d7d7e6603c0c"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
