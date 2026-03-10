# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "3d99d1ed2f4a1954b6ae206c3046f4a0b6ab81b3a0726894bca2d39f4e4e6c58"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "24d0ba70c952f1bc4ac9f69e8310c78aa793db7dbf4c6c90416e83a7b8a8a0ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "cdc1b09d3370ce55e9d43af8b3ae44409ab5c9699c18de59ebe36f3ea41b9d48"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "09df48013a607b86859b86dd47564c46df65d4fafbb2bfea1e1a4ebdae6c2174"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
