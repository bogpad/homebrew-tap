# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "e398eeb037bf7d594571cff5b222597e9cf57c3668cffc9d5f3f91aca83fb8c6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "86d51a3d2373e781e065205568e9dfb5e714a15189fec114ab3df72ffd0323dc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "1d2aa324999f5c30020dedf2b6e8477e33d9e2def4afe5dec7aad83508bb3ed1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "89eb21af5d55838332bfb4ab84dc29d5b4d590bd3597fe6e6e7271eabafce32f"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
