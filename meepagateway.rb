# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.2/meepagateway-0.5.2-darwin-amd64.tar.gz"
      sha256 "69b6fe6abf829d5219c860004dda8880adb4ff8cc36f0aa6aeba8dbe9b86ea5a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.2/meepagateway-0.5.2-darwin-arm64.tar.gz"
      sha256 "7edbc501fb1cdc5cd192d045dbf2cd2f1b25f2845e95dcfbdaa524b5c09f6ea7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.2/meepagateway-0.5.2-linux-amd64.tar.gz"
      sha256 "39d5c93df1c2d0717bc63021d8bcf64626b3a3280bf29a593cb3eb873a34702b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.2/meepagateway-0.5.2-linux-arm64.tar.gz"
      sha256 "59c46466b759907bb5f291c5023609cc1a4c6dde9180338c5e067951e51ebb95"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
