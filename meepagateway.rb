# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.35"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.35/meepagateway-0.4.35-darwin-amd64.tar.gz"
      sha256 "5bb93cf8d798ec1df2ab82bddce91faad6549c03432d5465aa8f7b9e47365828"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.35/meepagateway-0.4.35-darwin-arm64.tar.gz"
      sha256 "5d57e4ce3f9b94f1052cb80c93d2c93e4622913f7cd0c6b6942d0a14cccb5406"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.35/meepagateway-0.4.35-linux-amd64.tar.gz"
      sha256 "cae11ff78434b1db8ddeaea089d6c32584ea2b5360c9675c8c8baa74cba50848"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.35/meepagateway-0.4.35-linux-arm64.tar.gz"
      sha256 "41372523a0633450c5516a8d208b94a6f500edf2f9f2f751014bed9066e4bd9a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
