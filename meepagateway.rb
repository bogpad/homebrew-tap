# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.23/meepagateway-0.5.23-darwin-amd64.tar.gz"
      sha256 "4c0dd851c4484991bd5c74b0bf6b43751cc9f4300d64d4bb76f94d177dd0d77a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.23/meepagateway-0.5.23-darwin-arm64.tar.gz"
      sha256 "12588e4370d32879fcf16044ff6beaceaf5480e17c91fdc6ee7fb990e78d739f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.23/meepagateway-0.5.23-linux-amd64.tar.gz"
      sha256 "35474b92a8e566b390884b418c01abca12bbe00cb969b14ddb0d96be725412c8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.23/meepagateway-0.5.23-linux-arm64.tar.gz"
      sha256 "e05fd7fbafbe08b57c0226971e848021ba753222ea2bb18d56061a4a8c574edf"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
