# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.2/meepagateway-0.5.2-darwin-amd64.tar.gz"
      sha256 "57028d0a5bb9686dd1760fec51383c6f8f425807bf8ad18ffb02b7802b8106e1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.2/meepagateway-0.5.2-darwin-arm64.tar.gz"
      sha256 "8d36899a0ac966763e5ba48769171315b383743c89aaf1af8280857494efd29a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.2/meepagateway-0.5.2-linux-amd64.tar.gz"
      sha256 "521bbc0d4fa2ed2b57f6e96cf85850f8d3de7dadcd2fced0dffa40d65ffbae80"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.2/meepagateway-0.5.2-linux-arm64.tar.gz"
      sha256 "109a77b671006cac6cb71ae97e90585192e2dbf4ad481f336f636472560b5754"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
