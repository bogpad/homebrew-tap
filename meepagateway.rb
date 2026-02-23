# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.40"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.40/meepagateway-0.4.40-darwin-amd64.tar.gz"
      sha256 "de19bc5d3132e207331b8e640e192ebaab82253b5bca63729099cc77216b7ef8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.40/meepagateway-0.4.40-darwin-arm64.tar.gz"
      sha256 "43a458c03c666c60176fb01edfa2fc22291120ee7411af2888f34dabe093dec4"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.40/meepagateway-0.4.40-linux-amd64.tar.gz"
      sha256 "6c7547740279d955acc948d40f0698585872ef635866f43b7f6cb418801d904d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.40/meepagateway-0.4.40-linux-arm64.tar.gz"
      sha256 "759c095802e5a902469f1ef72ea392f4f72ef192d15df045a1ca7ee5a489cd28"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
