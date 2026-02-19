# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.28"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.28/meepagateway-0.4.28-macos-amd64.tar.gz"
      sha256 "98303d4e146e0c8f6b233ef480c0cd21a8cc47e5bffc01c8d97ea20426b3d562"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.28/meepagateway-0.4.28-macos-arm64.tar.gz"
      sha256 "827b0ba3f2b63a50aefd8c195ae6cc606c9bc1a1614e59a33252c8d3a155bcdc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.28/meepagateway-0.4.28-linux-amd64.tar.gz"
      sha256 "7be1059c4c0fd6afb6c86cdd4c3b7b90715b0a07dc205f5b5b2086caf5dfd09c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.28/meepagateway-0.4.28-linux-arm64.tar.gz"
      sha256 "40131272ce051f49f7634685be7a38ecbefb7695068796277a937f2c3672f2b5"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
