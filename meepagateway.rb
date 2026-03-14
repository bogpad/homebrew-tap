# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.2/meepagateway-0.0.2-darwin-amd64.tar.gz"
      sha256 "64171b1a081f3479a1f2392fb36c7d545010f0a3fb1cc2ebc06f8f42a77f9693"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.2/meepagateway-0.0.2-darwin-arm64.tar.gz"
      sha256 "5d94b5d875a31cf399c924507a1b085523c0af46d35474249a050a2c22a70d2d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.2/meepagateway-0.0.2-linux-amd64.tar.gz"
      sha256 "de122ab62181843af43b837154ab980dea83623ada2df030d0fd4987b6d55532"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.2/meepagateway-0.0.2-linux-arm64.tar.gz"
      sha256 "e8deac0171a1e71bb184eee842581c69a63937aae41f0c7c64d07934eac824d7"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
