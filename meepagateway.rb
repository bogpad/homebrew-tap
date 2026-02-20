# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.31"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.31/meepagateway-0.4.31-darwin-amd64.tar.gz"
      sha256 "504c403b42ad99f126acdffccc94ecc42d08fee291c4aff3e48e075a1dea3a50"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.31/meepagateway-0.4.31-darwin-arm64.tar.gz"
      sha256 "1eb94807c34313e337a168d8de9eb963e85759bd5452f6fca8064c31bc406f47"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.31/meepagateway-0.4.31-linux-amd64.tar.gz"
      sha256 "0fa6e2a75961affa0cb6c089ad1f3fe1bbc57a7f1bdf5f3a8380fbf831d42209"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.31/meepagateway-0.4.31-linux-arm64.tar.gz"
      sha256 "aafa27263f8bc5d5a10723885e44797d324af7591371950f9c886dd5a464db8a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
