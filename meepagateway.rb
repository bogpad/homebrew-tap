# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.62"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.62/meepagateway-0.4.62-darwin-amd64.tar.gz"
      sha256 "d328bf58020085f44f2e5ce5e7eac70a336f80f78c6bbf505668386bb3659a48"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.62/meepagateway-0.4.62-darwin-arm64.tar.gz"
      sha256 "01ad01c673578f73490ab9528c45f6b9eb62c4003bf85f7c26d957579119d229"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.62/meepagateway-0.4.62-linux-amd64.tar.gz"
      sha256 "7d058fb7d3f1256767176f0f08358f2bf76aa04ca28b8073081102bcbd507753"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.62/meepagateway-0.4.62-linux-arm64.tar.gz"
      sha256 "ea1f757eb9f5b9f40496909096a0e2f39ee1cc940b057891b20d3642e69c19fc"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
