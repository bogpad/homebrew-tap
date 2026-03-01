# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.24"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.24/meepagateway-0.5.24-darwin-amd64.tar.gz"
      sha256 "a53fca5ba9a1f20c6ca066b5e43aa40110fce8d455fa5cb464bb2050c10800c1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.24/meepagateway-0.5.24-darwin-arm64.tar.gz"
      sha256 "f1285dc0e3fb5942d4cdc31322595006f6367da68deffddd2f3b4f44a116bb56"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.24/meepagateway-0.5.24-linux-amd64.tar.gz"
      sha256 "0e8411424d538def3222c4a4ed5e74e803613c0f69ff0655d8272d9f40222897"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.24/meepagateway-0.5.24-linux-arm64.tar.gz"
      sha256 "6a4300ffec6d7cc6664eaea8e9a48009327618c09acbff5cbbfe84f1873bf24c"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
