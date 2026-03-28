# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "46d2201c2cf315ae7a41fb5e9d084fd49a80607afe4c06da312388a530ea9145"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "85e44b03d3f649ae934cc04fdeaa627c70e750eeb98d992bf6d23bef81eb9b78"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "ab904d612f1ebcb01d33448219b64d47ca8b10c8e10e37abb3aa61ccb309e728"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "0a4a119e9d944f67ee98ac5bb20f8b6ebfc9d80e9e1bf56afd0dcab5ace29786"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
