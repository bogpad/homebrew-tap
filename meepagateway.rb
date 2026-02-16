# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.8/meepagateway-0.3.8-macos-amd64.tar.gz"
      sha256 "891682abd2e659eccde913e20bb21960fa3a58e3749315d3596d2a7b93c7ddef"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.8/meepagateway-0.3.8-macos-arm64.tar.gz"
      sha256 "3cffc30bbdd8d868951d1fac633741df4ac622421faa1c64007c9acff6a135f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.8/meepagateway-0.3.8-linux-amd64.tar.gz"
      sha256 "b135da963cff41ceafa7377b140749a04157b0ef96f1d718bc6402f704f8acaf"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.8/meepagateway-0.3.8-linux-arm64.tar.gz"
      sha256 "525d9e4d86780de9bef8f5c63a9f9a3f0b02e1b6cba7776023e305de8ab07b53"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
