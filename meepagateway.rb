# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.3/meepagateway-0.3.3-macos-amd64.tar.gz"
      sha256 "459c035c45ff96475ef54040b06a1de9dc930f4c0177e6676ef09214d0525cc6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.3/meepagateway-0.3.3-macos-arm64.tar.gz"
      sha256 "db2bb67ef77beb914901a594f1961fe14db9f3c54b42250c73f2ff3d08b64cbf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.3/meepagateway-0.3.3-linux-amd64.tar.gz"
      sha256 "b1523c8c09b05aef80e5e6af7c79a93c7cf74f3a11fbb3ee5abc92786b4412ec"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.3/meepagateway-0.3.3-linux-arm64.tar.gz"
      sha256 "ca7c60cf71977db659699823f5227ff433ad4132b76156224a16025503eb02c1"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
