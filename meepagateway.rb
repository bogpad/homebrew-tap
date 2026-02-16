# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.2.1/meepagateway-0.2.1-macos-amd64.tar.gz"
      sha256 "f32dcba7c3b1be1cf83676acb912e282e30e6b8b4f5f3153aaff96069909e071"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.2.1/meepagateway-0.2.1-macos-arm64.tar.gz"
      sha256 "3548edf434be74cd06a7bdfd21129a94f8a652302503d816123e55b25fcb5a44"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.2.1/meepagateway-0.2.1-linux-amd64.tar.gz"
      sha256 "e2008f115567ce0536ab269ef2b029f8ea3cf2d3f46651ead5b04274584f392e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.2.1/meepagateway-0.2.1-linux-arm64.tar.gz"
      sha256 "c300f913b4df787ec3b672cc430268e458beb00b05d04e85f02c17b333a71e6c"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
