# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "32ea940a97550ba9ff8b33bbdb4225e18d3fc4fb6782c5fd18d196fccdfa0b05"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "c44614d6e36b7db738c117bfd7b6f23c3165f6dcec5b3ec8d795c0ada6473586"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "3e49a8fa1d6d24d15f7dd77d115af08c76ac973da44d2279b1876a566ae07a7c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "ad0d42c1bc73cc916eb32ebcef2542396e3921b7b037efad21f3e14b36499345"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
