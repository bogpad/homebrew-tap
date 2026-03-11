# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.38"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-darwin-amd64.tar.gz"
      sha256 "3b480c062c2ae8d381a6a1d62730ca984ee146eb4a2235b6de5767fa18d33677"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-darwin-arm64.tar.gz"
      sha256 "de6c5fc8be7ecc75e26dcca059e55ed16181670a17f760856cf9aeca9053e819"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-linux-amd64.tar.gz"
      sha256 "a1b69e93b142ecf0601e648a6e1187cb8ab57d7e5a86810ae5306cf8286e4ab5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-linux-arm64.tar.gz"
      sha256 "0b1dd8da1f874dee5d3fb6681c4e501fda5fab7b25956e825da74c8bce966a35"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
