# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.1/meepagateway-0.5.1-darwin-amd64.tar.gz"
      sha256 "1eaff6727ad335377e974ae9fb455d73ae4d04f8bccc7cf9cb66f0340aa21d5a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.1/meepagateway-0.5.1-darwin-arm64.tar.gz"
      sha256 "40be874ae3a3c5197860f82d0c454e03326a33f431e7db9bae198e91dfd06257"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.1/meepagateway-0.5.1-linux-amd64.tar.gz"
      sha256 "5f93acea7396107c10fb1c7f2ca6505a422b6ebda4bdcbfb3e917556cb6955a5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.1/meepagateway-0.5.1-linux-arm64.tar.gz"
      sha256 "08af2cfb0a48b7566214535bfc27cb9b3f91f4c30975142aaf10d3f6066d9d29"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
