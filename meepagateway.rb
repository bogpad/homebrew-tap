# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.59"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.59/meepagateway-0.4.59-darwin-amd64.tar.gz"
      sha256 "62af98b496a2380f7d197ef90408e1d874af4d4011b73aab08879f5ca43bf1fb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.59/meepagateway-0.4.59-darwin-arm64.tar.gz"
      sha256 "0f4b7a7de4ab18d90bf8cdf2d7e9c410a4a61035317275128f81a7d6bccfc955"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.59/meepagateway-0.4.59-linux-amd64.tar.gz"
      sha256 "bd44f0f53a5fba31f1db243ec0048ac9efcc2ef7f43de3a47cb245206df0265d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.59/meepagateway-0.4.59-linux-arm64.tar.gz"
      sha256 "f7ebbcf1efdcbbb661abfd0ca366e721a99eac84c3649371af749f409016e8b0"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
