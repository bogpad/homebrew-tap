# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.12/meepagateway-0.5.12-darwin-amd64.tar.gz"
      sha256 "f1122b39832bdca9b71f12cb3d95994c249007ce63af0d4fdaa04ac54c82f1c8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.12/meepagateway-0.5.12-darwin-arm64.tar.gz"
      sha256 "a6a04286c9269ecc0da207081092f7dbe2b7793c0a561bc6460ff18d8d424a35"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.12/meepagateway-0.5.12-linux-amd64.tar.gz"
      sha256 "fd7b0362851585a5e80f0205da27050db779e39f368edfb033abed1f281b7184"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.12/meepagateway-0.5.12-linux-arm64.tar.gz"
      sha256 "208be3dc8fdc16b1dedcff2cd7a5db1ce0945e1a48e4562eeb12245861258a39"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
