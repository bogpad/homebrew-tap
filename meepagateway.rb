# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.69"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.69/meepagateway-0.4.69-darwin-amd64.tar.gz"
      sha256 "e4b768eff657665303041fcc8f9b0f206fabc1e985b851a217d86ea9d0d5d105"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.69/meepagateway-0.4.69-darwin-arm64.tar.gz"
      sha256 "26ce657b80039824bddc6473e813bc05be3218b0c7e70088f80e27e5a2ed8ab8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.69/meepagateway-0.4.69-linux-amd64.tar.gz"
      sha256 "28247721b2f8a4dd93ca00e2e4c9789c710102d18398433e94c914ecd9249f8d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.69/meepagateway-0.4.69-linux-arm64.tar.gz"
      sha256 "eefabe2ba959bba00011dbdac647c10ca331750294ee9d3128cf954d7cab96e0"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
