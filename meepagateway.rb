# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.38"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-darwin-amd64.tar.gz"
      sha256 "0432156596ced6be90e16bcea773a010093e59a0008ffb8b4c66bc8a8b4c6c72"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-darwin-arm64.tar.gz"
      sha256 "3f7a277278b43ba4ab7ff6a1f6b07a3887e9ea0bc260b452e30e19b87c53613d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-linux-amd64.tar.gz"
      sha256 "c26cc38956a99ada81b9bc4ba08f7e2133573b9316ae6d4b545948bdfe6e7659"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.38/meepagateway-0.5.38-linux-arm64.tar.gz"
      sha256 "bde4708ec734b0236ab37d909ed88114bc48f303097ac42092e83ea667428fd3"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
