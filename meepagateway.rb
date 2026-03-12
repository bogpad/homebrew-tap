# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "9b409a2f986cdddc956f662fb00ede486e6ded0963b4a6e815de649b01cb7ea2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "df12dd9301ca9c88169b77c4d16ede8c10cf93abb633d78cf54f3ef0eaa1fb5f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "71e6f9576aff1eefecbc5c8a9df997a3cebfc6b3a51569bda3bf807d59a1cf34"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "e7fe8370b8b0fde2c7b46c65a6d14a93b2a8f543742e6b8c374fd4d1667d366a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
