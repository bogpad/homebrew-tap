# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.14/meepagateway-0.5.14-darwin-amd64.tar.gz"
      sha256 "c09c37d1d7ec9883d5f2145eee27f744bc1dc2a2313e3f2e40d3c3edd7a1e0ee"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.14/meepagateway-0.5.14-darwin-arm64.tar.gz"
      sha256 "3e86d75a23ba66e5b47954031115fc810e9cecbd5b8cfa9c960a35ab8fbb5386"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.14/meepagateway-0.5.14-linux-amd64.tar.gz"
      sha256 "10a98b90e948c30c2659abab912a8860bf4a7d4ffb42301826296210c0f491fa"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.14/meepagateway-0.5.14-linux-arm64.tar.gz"
      sha256 "0024087f67e6b9a485c7df4b6ea61d322e495ab660f2ad2b82fe327c28c19f0b"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
