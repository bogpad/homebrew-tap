# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "53995e71c0081dd44aa70c6ca2373993d034bfd140705d079d6e576c49e65865"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "cba140b1f5f9b4d98da5b6d61b397adf0e7c4332ddfb13ed1f032da068f9e69c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "86390fe0a624f82634eac9efe6f568b3733fd3553ecb66938b5499589c00aa7b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "a03c2845b2afa312428f7bfea223a3c2a2c85900236004a83cce2d5983877fc2"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
