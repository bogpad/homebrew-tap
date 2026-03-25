# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "8cd6a357fb6a6361279eefc3af0a21dfdb6734d3ccd8b9da2b17e7b6b72b4d15"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "998c004ec08d2467a3f2e577a742c568536de5f6b5c95f029f680740987f9798"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "1d869d5d670f07f1cf8918da3aea6cf816d755c66ac0939072233bbaa81513e4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "d67079cd25a5d71b24ad6457f2b060fa6605c8e65c7f3df0370b9d7f9329108a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
