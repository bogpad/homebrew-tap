# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.25"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.25/meepagateway-0.5.25-darwin-amd64.tar.gz"
      sha256 "9259a013ad9dc4bdfc27f533fb5248d9ba6f47b2e418e29027465b14214798eb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.25/meepagateway-0.5.25-darwin-arm64.tar.gz"
      sha256 "229711cbb12d05615d32edb0b18ae880c5ffd77cc7090751018ce1dfdf95d47d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.25/meepagateway-0.5.25-linux-amd64.tar.gz"
      sha256 "c8e44b4b8b977612a807103261fc36e27e0ecd1fb4255ee50463d8608523ae3d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.25/meepagateway-0.5.25-linux-arm64.tar.gz"
      sha256 "96f3d722308be1937b6dd026fdd18549f9d5bd25f2a583996299c4edcd77b5a9"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
