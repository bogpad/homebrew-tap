# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "59120e5b3a92fb613f4a2f28a10d27ac7e1d3c762834d4d934757f4f4032678d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "4ee7110a2036100ab61e0d50ac0d7c8d8d3b0f333f4e9cf35dd44f1104e8a6b0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "6d5c52096177a8229f6baf19ab6cfb2e745c2824cbcd27b94b77ef049b62c8ce"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "4624d4e2cb34b5a19b26e962989638bb6fc693a1d2326ba45626470b1fbe67a6"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
