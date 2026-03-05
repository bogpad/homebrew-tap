# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "ef8607831ceaac2ed16c9a25f0ed8b418742e1a7aabdde664cc9092a36e0b8dc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "4938726d19414843abb371c974df62acdbb23da97a52d4cd48d9bc1488c5e164"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "8357b4e5bb9c882a7f5a9cb0d64dc55253c2ec6f55e98a5cba8370d76b7c8b4f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "a6c2ea5ded08889b2f39074e312a9b34e1aa7b967d34ccecdf0edd3c2786ca54"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
