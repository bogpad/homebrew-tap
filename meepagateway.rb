# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "3f7d0d8443cb8fc64be1bddde5f36e97d67ca4a0800a4cec45a167baf75f69ae"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "5023a8c72ff418798a42849fdea611a76019a1d4e223ed48f20a8ff7dffe648e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "dd6e5ae3340db2b6e9d3a457b9a37bc740446ef5cf5201f0d7f8dca09d854417"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "1cbae2ca80a9c3695b6b46de3057f376c44ccc6ee5bce73d165ee080238a7309"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
