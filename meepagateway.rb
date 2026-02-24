# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.57"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.57/meepagateway-0.4.57-darwin-amd64.tar.gz"
      sha256 "080ba2668cca149d8397e73368d01126bd68f9f73243adb57ea7e35522956797"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.57/meepagateway-0.4.57-darwin-arm64.tar.gz"
      sha256 "80d5a915a83714234f1a5d9cec85d12414710214f015bb231abe5110d5d1ec41"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.57/meepagateway-0.4.57-linux-amd64.tar.gz"
      sha256 "b64f6038f7077378279cf31c4374a04d094b78acecf3c0b1bf5e8b512d941300"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.57/meepagateway-0.4.57-linux-arm64.tar.gz"
      sha256 "9ba701ad23bca6d7e3995a01e7f602d4bea4aa6d48cea5aecd5c4627f7e8f8d5"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
