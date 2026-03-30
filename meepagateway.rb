# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "5434cf3a3b3e697a6c2a7352602bcfd269791f4a6d09d800af13b8cff39191e2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "2ad6beea1a56af579ba3b56bec64580d8ff18e287b454bf59253b90fc069339a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "d14016efdb77d29732f0d4e25b784a1aa2212aeb428447be863a6f51862639d2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "c2aaccb8add6d4b5576cafd029dc31a5810c46341a5b1a724dacb3e4cf232fa3"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
