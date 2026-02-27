# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.6/meepagateway-0.5.6-darwin-amd64.tar.gz"
      sha256 "b3a67be82533b67008c373a6954433c98406e4b41056247c7aaec02e0dbe34c9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.6/meepagateway-0.5.6-darwin-arm64.tar.gz"
      sha256 "34d28edcd51c397443f9c9a7a801c4eab804eaa45540589c86fbaa0501ec2da8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.6/meepagateway-0.5.6-linux-amd64.tar.gz"
      sha256 "9b0bde1078a781ef9811c7e40a1f02cc9fc502276f475fd2ce014015b86c6b33"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.6/meepagateway-0.5.6-linux-arm64.tar.gz"
      sha256 "48531fe34d587fc5c83be6be48c559c0e482f760c0425d7a6bb645c67ca71cf2"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
