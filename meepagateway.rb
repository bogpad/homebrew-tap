# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.16/meepagateway-0.4.16-macos-amd64.tar.gz"
      sha256 "31f1ba0cfabae57a8c78270ee19ca6027edb3c205ef4297acf7a09bf3bf92ebb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.16/meepagateway-0.4.16-macos-arm64.tar.gz"
      sha256 "1e7619b7313eaeabd757d9d25f6415dbf47de5dcf0be37fc2a1a86dc746fa579"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.16/meepagateway-0.4.16-linux-amd64.tar.gz"
      sha256 "2b1a5f5c01961cd18c2aff2e1b55b3d1d36730868e2bab39f8b9623159623ef1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.16/meepagateway-0.4.16-linux-arm64.tar.gz"
      sha256 "2d72638c4b494a5d1148806855b476a168ff28802c2cd29c3c65869e446264a4"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
