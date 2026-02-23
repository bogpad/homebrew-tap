# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.37"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.37/meepagateway-0.4.37-darwin-amd64.tar.gz"
      sha256 "a237b33dca79a7758465b0724211ba6bc0f08e355972c84d2abaea581902b2d3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.37/meepagateway-0.4.37-darwin-arm64.tar.gz"
      sha256 "e3c268d0fac166c7d76aa81b13adf41f9fcd7428b44f43a2952da24cbf2e2580"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.37/meepagateway-0.4.37-linux-amd64.tar.gz"
      sha256 "ccfc0193b122156309b1b6252163cc92e98e372fed81da6b00c2e7d32c48cc72"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.37/meepagateway-0.4.37-linux-arm64.tar.gz"
      sha256 "04a3cbe1f328f54b519babb14abdb04ba827a148042a18acbe5247f9281e5ed7"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
