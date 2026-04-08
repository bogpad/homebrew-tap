# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "423f2934790d2a269d3c29078d5fa7f62b675c0bd6116b4a10efaa79cc811905"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "69b85aefcdc5f7c524973799255a3a1878b3dfffe21daec6a6a357caba776b97"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "9bd9cd18fc6b09be017bbf03fdaa148cb26ba3fc47584934974f87ca313b8646"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "6931117a33fee46158647b398f6a654fcdb79d2aca5d66335db24dea71a4a546"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
