# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.18/meepagateway-0.4.18-macos-amd64.tar.gz"
      sha256 "4027406809766671705a085c3c76a6928af17a1b594de4d1bde7ca8691006a73"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.18/meepagateway-0.4.18-macos-arm64.tar.gz"
      sha256 "0db1d61f36c5ef82f6c1947543b069899eeef51829aaea6bb10b8b8ca21d93be"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.18/meepagateway-0.4.18-linux-amd64.tar.gz"
      sha256 "a132c1a90c162e9e1f353b26fd90a0bc79e649270dccfd94f7239a0b39b9c755"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.18/meepagateway-0.4.18-linux-arm64.tar.gz"
      sha256 "9d5924157bdd36a9ecf27151b6c81b2a5e9467a1158daf1c21142c9d1a905293"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
