# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "b75fe94f6a314f952dc67d279aa21d749c2353bd620cebf6991a6c8f4d86659d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "f0ec78e377b608b34a278cf1a557ec7f2bc390d5314447a36cd7fd0be3a2ad82"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "680772209351fe46b428040d490f4acc49b5cdb1ae30c6edc7605c0525093fc8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "c3635d32ddca70c79b61d6fd1f7c69aab4af7e408043bfc1a6c5e5b1c8b3bd08"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
