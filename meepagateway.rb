# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.8/meepagateway-0.5.8-darwin-amd64.tar.gz"
      sha256 "351b4caefaf341e187b16dc2d7f85ae41d8fb5d7f766f99df53f6e12ba5a3215"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.8/meepagateway-0.5.8-darwin-arm64.tar.gz"
      sha256 "8d4a74725031a6c4894eb9103b95bf505cf0fd75f3f54cfed59b0a314fe51a2d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.8/meepagateway-0.5.8-linux-amd64.tar.gz"
      sha256 "cde98bafc30e4a3c4e6c5736ef37c77738ff478feb8e22179de4325378357409"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.8/meepagateway-0.5.8-linux-arm64.tar.gz"
      sha256 "ed8cb722e306702490e40694fedede9d4595d32bf55457d50858e8d4f9368528"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
