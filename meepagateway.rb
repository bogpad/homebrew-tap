# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "4e6f7bf62b928b3aa6c48ce7b9fe20233fc6e739b5a12fcf4319cd4652d869cb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "336985f06e3c9a5dbc0ddcd92f6a99a592d0acf5ea0a9173fb2c6e1a2f101be1"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "5f4048b710ec8cbb86b2dd5eb038f363ed83c5bba4c4b1c1e0325ee4add687d4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "4d35b4ae62a3cb9033cd7f833f476d60fa06a51ca9805ba9e1233dad0f422446"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
