# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "d72ef14b6f91be789ad38eb9e3b4a1cc3fa16111dcb21ac9c4324d5e61d31d1e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "76063efc9d1209e6614292ccb294f39b64040ae15fec290675c82129e8a32916"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "feeff993e67609c9ea28ee859c0c0cb427c7ea033029fe845ddc91e7a890ac15"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "b7b6d625f61b7eacdad7d2e78339ecc77d6aeb13368aa2e1cbf57467c49e97e1"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
