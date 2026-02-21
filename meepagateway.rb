# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.33"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.33/meepagateway-0.4.33-darwin-amd64.tar.gz"
      sha256 "7cad494b0203337ad97297f3402b65df4c02e5a4beb4bb7885708ebe5dbda30b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.33/meepagateway-0.4.33-darwin-arm64.tar.gz"
      sha256 "730fdb64363c564ea6564b315e49f120a3e9442ae90677c5bef7f80be5fc112f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.33/meepagateway-0.4.33-linux-amd64.tar.gz"
      sha256 "4db723c0225a0a1c3b67a3be2b1fd5cf5e8d088baf16ce0aad146b8e92d3c692"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.33/meepagateway-0.4.33-linux-arm64.tar.gz"
      sha256 "d89ec438fe454c5932849697c4f5ebf55bd5f1d140004180d22da52ce431097f"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
