# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.9/meepagateway-0.5.9-darwin-amd64.tar.gz"
      sha256 "2781c828e2f9a6c5fe51490af41fadebdb4ff01ad8336cf16a32fa6a956521f4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.9/meepagateway-0.5.9-darwin-arm64.tar.gz"
      sha256 "1e115a626663b9dc9ec48157adaddb2d62a37f964aca580bdc3c6aa4b5e6743a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.9/meepagateway-0.5.9-linux-amd64.tar.gz"
      sha256 "df49905a80c37bf814563a38ff30dc5b566a207606b0cdb40c7ecbc5305e3c5c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.9/meepagateway-0.5.9-linux-arm64.tar.gz"
      sha256 "e582ee96a1b6c36a4172e9f3d0d9aa5181d97ae47a8896cab44526793d82d789"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
