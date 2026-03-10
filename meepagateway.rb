# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.39"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.39/meepagateway-0.4.39-darwin-amd64.tar.gz"
      sha256 "064d8be0ccaf8600b0cd0397ad61a0bfc9e1d59b5b978df9240d8de8ffe0e9bc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.39/meepagateway-0.4.39-darwin-arm64.tar.gz"
      sha256 "e4be15532677ff99cb53976d1364233b3d093ca1b3607164dfd5dcfa45d6d565"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.39/meepagateway-0.4.39-linux-amd64.tar.gz"
      sha256 "a4f72a6e75a55d999e89e8ec7d0daf6282c4f555c1f7db7b5a6dc6c0063c81e7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.39/meepagateway-0.4.39-linux-arm64.tar.gz"
      sha256 "f0470cd42ed2872ac79b67670b2fe3aa0b62aed6febcc724cbd898a2b09c6b03"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
