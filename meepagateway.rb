# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-amd64.tar.gz"
      sha256 "4b1963423211508c4d779bce83ff2d8c9f5b62ecf32a068e625dcbb0eea75a23"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-arm64.tar.gz"
      sha256 "c15d320c782be1736067c5c50b3fb1ee275a476fc26e2b4f9f3ec1a003bfc7eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-amd64.tar.gz"
      sha256 "34b66a05296c3c5722e9568ccf6c3ed14ff3d15d5af64a9a5c7b39dbff9243fe"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-arm64.tar.gz"
      sha256 "d82624b78c51470a19a30c42662f180aacad53a961da073f7fee12b402f59b7f"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
