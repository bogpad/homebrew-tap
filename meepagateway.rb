# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "76752284f7186f3a1b4c5b86a52dcdd742675ca4821dec10059aa4e711d0c5c0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "a4b55ead391f8cf6f9b2c7b3b1f36f13793e628b31a5a395a01b0d4b02f60386"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "778a67c24907def8b977cd94836a7a1c8ed53d22e924e51d9d58ba30a11c106d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "c3b6b594f9eaba3cbcb88920574999a2f13e16bffa4128e3adac4b1f4db60fd3"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
