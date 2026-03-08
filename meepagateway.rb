# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.38"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-darwin-amd64.tar.gz"
      sha256 "fd6c23846eab2dc516c80d1405adeaa5eb1d9cbc688ac45a8cd7823f9c06b550"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-darwin-arm64.tar.gz"
      sha256 "50e05cf55c1b5897d36409b56b34d51f65de9c76a337b507b7bafd01f997a4ba"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-linux-amd64.tar.gz"
      sha256 "f3a64034dcd6645a0cf63e797bbeeb9f334fad960177cb2f3585bd6ecdb95055"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-linux-arm64.tar.gz"
      sha256 "7ab42e3476116210b02517d82411b7a858fc61b72cec8f6c5a12d88dcce668b8"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
