# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.4/meepagateway-0.0.4-darwin-amd64.tar.gz"
      sha256 "8d0cf90899d4da823c4da9d2b2c0021931a29ddd68bff3de5643b20d250af475"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.4/meepagateway-0.0.4-darwin-arm64.tar.gz"
      sha256 "eef91b2e9329806da6c73b6bd652d2309b5a3e96a573ef4ce3529d5bf557ed90"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.4/meepagateway-0.0.4-linux-amd64.tar.gz"
      sha256 "c0310ff7770918bc6bd731f29ca130645d158edeb430d3bb4d23f0896fbf8394"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.4/meepagateway-0.0.4-linux-arm64.tar.gz"
      sha256 "bcdcaff400925945098fc8a49ebab53115281105ecca1745d03a7b3a0b26dc0a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
