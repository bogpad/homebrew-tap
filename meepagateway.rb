# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "2d29728e828c45e6f7f6d82ea3ddb707ec09a6d8d74055ab3cc6499036c5d835"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "0c5043bde68a728dfdc0bf49e71fda0ff0e11a81a7c216e78892a39df0567271"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "39e3ebf3a9e07c7aa4fc584bd6391a75026222506d76a58eb2e305d478a9ecb7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "fa3dbc2bd0c9f94d6ece4410246f28c0ee6e66684c8827362c327651b36039d2"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
