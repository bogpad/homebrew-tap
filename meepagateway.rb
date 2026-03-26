# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "cf9fa3307dddb24213303f9a5837b47e7972608d8b3275b7a56739a0abf9d555"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "3f0f1fd07eb4d1da9ba7df948f6b0b62522e4a0efeb580d23cc9bb3840410c36"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "ec0cc4ae28f38199701377fe0fd7192142f95f352ec8a0f0b03e57319a64e0d6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "b1e7cc5bcafaa9f76ce9bf8342efc2f12e0cd41167274cdd9fb3ed0e75793554"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
