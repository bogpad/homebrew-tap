# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.32"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.32/meepagateway-0.5.32-darwin-amd64.tar.gz"
      sha256 "0cc1a73371ff9256b01dcdb2be51a6616c4927d1dcc418adf78c8ae4300e22d0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.32/meepagateway-0.5.32-darwin-arm64.tar.gz"
      sha256 "0427b0acdfade6f3ede35bfad4d836378fa441a51437a3020b28cef2c132a42c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.32/meepagateway-0.5.32-linux-amd64.tar.gz"
      sha256 "8a2303673d2aff07192a442d97883b51cbc1058d128c8ef67c580499e757e82d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.32/meepagateway-0.5.32-linux-arm64.tar.gz"
      sha256 "2fab74f6ae944319fc4ea6c7870ce056b5696eaca009e17c97d5aa14b9c668f4"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
