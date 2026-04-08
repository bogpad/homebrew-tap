# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "1c64212a62eac959124d2e59a8cc1b72378dcc5911245774cc56080d0d675f21"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "0b6c9d1476b4a6ca51f0dad4bda2a3f829a5f6574cb2d33b393d832a23bec1ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "2d883797791282e4efcf39fdf9c2606246f9a1a81a505d89330c06ef2b30cfe7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "ea30f40d136e17de067dbbd8d214c216909012142cff2fa012d81fb8169ca30d"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
