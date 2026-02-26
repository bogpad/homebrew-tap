# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.68"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.68/meepagateway-0.4.68-darwin-amd64.tar.gz"
      sha256 "8b7630e778d9db3afb28aa1eb497cade8bafd75478c3bef81d3966297fd5652e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.68/meepagateway-0.4.68-darwin-arm64.tar.gz"
      sha256 "8138034b2eeb1f962cdf068fe9c433d4311002609f408aea48c834a8e0e37c95"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.68/meepagateway-0.4.68-linux-amd64.tar.gz"
      sha256 "ba4adbcc05458cd75dc8b764fc22ae235c82a1db1c73e56b99470fb9b910d702"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.68/meepagateway-0.4.68-linux-arm64.tar.gz"
      sha256 "9e3d346373a27694cbc5e346303b71e74a7d498feed078b0efcc50721d773c39"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
