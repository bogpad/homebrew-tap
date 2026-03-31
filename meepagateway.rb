# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "ab606f3d79732b3975b590369a99e95586c287f99fe9d2428dfbe1149b434a78"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "c87b5921db0d03a6899edb3b0b0320e3bf6c7ceb7f7f9fa1f71e8fc6905cc33d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "f6d3e51168e6e2add583fd5460f2a9781d7c4deac2d25f21fab12f34eac50e04"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "5b4a4fa6e85150e579a66b979aca46b69cb2535b3f7dff5744b8eb9ab86213af"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
