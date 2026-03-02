# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.33"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.33/meepagateway-0.5.33-darwin-amd64.tar.gz"
      sha256 "e64019967e372966df66d5f49ca199ec78094f8b31bf7c8094bacb4c389a539e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.33/meepagateway-0.5.33-darwin-arm64.tar.gz"
      sha256 "5fb43d501108cde852ec4e4a0e419bb768faaf205f4231edafd403ac40f2ae3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.33/meepagateway-0.5.33-linux-amd64.tar.gz"
      sha256 "4f23e9cc05561b5d169b44b9c8e317a9b8469ed2adf448ca28a144aca9b928b0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.33/meepagateway-0.5.33-linux-arm64.tar.gz"
      sha256 "ab3d244fe59789b5818731c97ab1689dcef7406ec3a5de64b0c9493ad5b41e86"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
