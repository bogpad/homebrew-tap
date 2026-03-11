# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "6beffc2a31a8ec5e220102df614110ff8faea7b1948a2dc389690d277aaf695f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "ac4313048d46d3aeff0c81c97cff68ecc19b95a866cee5063bd45f0ff0e70ef9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "eb00598f5961da2d58ac57fb79d8f87827fc022b25fbbfc0dd8c1ce3d6d20956"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "12f35f6ef8864a05fe2b4cc40fab1686c0a63ffe8f02dc8118326c3c909ef2e9"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
