# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "d93e6b2bb0d69c6d8d917f2d8dac3a60cc36e110070a37b9dbe5fbfe59e7683f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "bd9da8784c0e0223d5c80f76ce5038588ad061e808d7d083e4ff6cfa9b3807e5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "de1843983e7e3f3b53798ce06df91939a56888e89e1b72b5e30098ef68e36054"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "e887e1c4686c6c5ada02c5b8e745b00a2784cefcde16fa8f331f8b9b0b81e1ee"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
