# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.34"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.34/meepagateway-0.4.34-darwin-amd64.tar.gz"
      sha256 "4c0961cdb97857458d68ba58ea876ca2ec438f800ef1d365c1d6be076cb89ff8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.34/meepagateway-0.4.34-darwin-arm64.tar.gz"
      sha256 "523d6f71a547729c5ec3984f61eedf86df90229f646f44adc0a05cc19ef5d88d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.34/meepagateway-0.4.34-linux-amd64.tar.gz"
      sha256 "1db4c4be1ec3267685c7e2b0e1c17d67d751748f9a6701b64af5c0922de4fe4e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.34/meepagateway-0.4.34-linux-arm64.tar.gz"
      sha256 "6454db6d8a5129293372da9716c2cee2f120171036bbf8d9f33eff2d6a3f9a10"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
