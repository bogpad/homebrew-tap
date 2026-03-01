# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.22/meepagateway-0.5.22-darwin-amd64.tar.gz"
      sha256 "aff203f3e2d1c64ea8c94cba0edccb6a6d322058b72b36e388d81a283d55f1ef"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.22/meepagateway-0.5.22-darwin-arm64.tar.gz"
      sha256 "71e3f39bcce22f1d056da08261dc89fcf4d7ce668dd5534d17f140fab1dc2e4c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.22/meepagateway-0.5.22-linux-amd64.tar.gz"
      sha256 "c18cda92b735c64200e8c9a7ecd47ca492d8875881b43d72d999c6959cee228a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.22/meepagateway-0.5.22-linux-arm64.tar.gz"
      sha256 "1209827a89eaa0bd1effa9c12aade5a4edc033330eeb859236b8db0ee3a3a09e"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
