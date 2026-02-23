# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.45"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.45/meepagateway-0.4.45-darwin-amd64.tar.gz"
      sha256 "4b68b5123964d51fdd740d2c4ed6bea2ffea6452cce6d8bb3cb63068fe5fb90c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.45/meepagateway-0.4.45-darwin-arm64.tar.gz"
      sha256 "370baa0a034d19fc6fa8281407af9dfc56ef364b8503ed9d0e2af2bd5aef971a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.45/meepagateway-0.4.45-linux-amd64.tar.gz"
      sha256 "3feafccd9b0fefe1490243179b1d0bee87978d6d2e4031925f6409e04b731274"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.45/meepagateway-0.4.45-linux-arm64.tar.gz"
      sha256 "00de1bac77fdf5fc9d32c54f6ad8540d8aa344bc6008820b0bde797a924f0371"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
