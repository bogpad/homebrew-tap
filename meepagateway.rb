# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.20"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.20/meepagateway-0.4.20-macos-amd64.tar.gz"
      sha256 "85790ff691c2c9a8e4291b0d38327cf46eeccdc21337f8c3c22cfc08c2be56be"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.20/meepagateway-0.4.20-macos-arm64.tar.gz"
      sha256 "6dae46c8e63c2b0a64a89ee2414ab35bef651b351e0da54dde32c6541df15cf1"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.20/meepagateway-0.4.20-linux-amd64.tar.gz"
      sha256 "bd446e3bf57178b139dcdf018ecc115dc508152c748bf4f9ed638c1c50a908ff"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.20/meepagateway-0.4.20-linux-arm64.tar.gz"
      sha256 "342884a63a8a223ee1b994a5e00acec0700e4183ab8581fc93f59230b097f353"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
