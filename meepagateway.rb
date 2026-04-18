# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-amd64.tar.gz"
      sha256 "2b462c90d38c5006bdbffcc48b661ca9fcc580b1a1ef409cb5a2b3e1a4b84a05"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-arm64.tar.gz"
      sha256 "f3f5a35a42610937580221c901c4c48257cd5e6afdde0d2097ce7311611f9c16"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-amd64.tar.gz"
      sha256 "0b7e6305a9f58a59cfa0611e3f006f49b9357f59f2941c82c2238a3edcaa3a5e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-arm64.tar.gz"
      sha256 "f70cff96fefaa3c5d7c3d02e98274de4f076d57e12788db2d26987702c69c5ce"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
