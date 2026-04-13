# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.8/meepagateway-0.0.8-darwin-amd64.tar.gz"
      sha256 "a22cc6a57ef84be14d9bcf4e46689eebeda99801eb0007f9b3b3193c208dc479"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.8/meepagateway-0.0.8-darwin-arm64.tar.gz"
      sha256 "eb72a0024165fd61e372e256e61b5123bd1356a388ad16f6a888db9de128fa62"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.8/meepagateway-0.0.8-linux-amd64.tar.gz"
      sha256 "688d5450725474831ba265286c1ce76f5e2b7dff067fd3b3f91b1c5a34d2c51e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.8/meepagateway-0.0.8-linux-arm64.tar.gz"
      sha256 "5b798064c2b27d8c7ad191934bace2b4372b01d455adb21b07fd77f33f72a93b"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
