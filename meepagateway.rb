# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.29"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.29/meepagateway-0.4.29-macos-amd64.tar.gz"
      sha256 "96ee2cfb360b0c6f9863516622afd7ac72c5e2479ac3651d6db19d30e15e3329"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.29/meepagateway-0.4.29-macos-arm64.tar.gz"
      sha256 "92d8840cb2bdc2d437c190fd1f056ad36b5474d4a549f819171923b327f882b8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.29/meepagateway-0.4.29-linux-amd64.tar.gz"
      sha256 "ca096a36ae3f7f295151da0738656c3b21750723045043926c42a3f2a9c14bd2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.29/meepagateway-0.4.29-linux-arm64.tar.gz"
      sha256 "b61630f633a916553546d9345f266cc0856297db5011caf4ef8ae7cf3cdb6082"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
