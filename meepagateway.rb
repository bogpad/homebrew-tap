# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.3/meepagateway-0.4.3-macos-amd64.tar.gz"
      sha256 "431376e54cec5b16d3312eb4355ad465632528846a02e40d4950151212259561"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.3/meepagateway-0.4.3-macos-arm64.tar.gz"
      sha256 "0f50b91288c8c42cd81d4bbae307936b4c7a27888d966cefcf3b24f7e7fd5920"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.3/meepagateway-0.4.3-linux-amd64.tar.gz"
      sha256 "e1aca079832b764eb18e1f0bab4bd65c070c57a16d265c8361d48ca4dc2319ca"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.3/meepagateway-0.4.3-linux-arm64.tar.gz"
      sha256 "d5e8220ba5d6955ed0ce58c88960e12b13cdbfc4322935d614b179a4d87e4c4d"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
