# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.26"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.26/meepagateway-0.5.26-darwin-amd64.tar.gz"
      sha256 "cac1d12d54f3a9bea326a583b1bb38874698e86a887494247b181e325b83364e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.26/meepagateway-0.5.26-darwin-arm64.tar.gz"
      sha256 "554789977c1463309cfe3f4afce1babf17f9561bd50d3dffbeaa9b44ae4b85b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.26/meepagateway-0.5.26-linux-amd64.tar.gz"
      sha256 "0ef0040bf16c5a216cf4e4b4c3594990ceeef3ad2fe97bada3b8af3f01c9a00d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.26/meepagateway-0.5.26-linux-arm64.tar.gz"
      sha256 "6efb6953f7b2bcd1036bb4caacf253c836eef1b175d2197f2ed3a854e03c0802"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
