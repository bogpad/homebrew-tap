# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "97ccd39ac42fffe49ca33e445229d60df1e7464a6bc065ec2454984a710442ae"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "53e416caee94b7bcff8cd8600169e1360d50e51ff1b0da6419ab534b892d9337"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "631b3d720e881641112070a360b330953f04f4494dda75dc33e2873e0717a7dd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "704f6a8ec3911297ca03b8b14888c91e2681492529becd3e0dc7b789946796bc"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
