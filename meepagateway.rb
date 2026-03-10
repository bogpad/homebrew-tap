# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "e63f3e59e4431675c7ba205f7b5cf9e2d23d151cac03c0e3a1e275e5e4b97819"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "9dce75caf8dd6d081daa72313e8c3fa37cc25a140b9bbe95b829cee74f0cc93f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "a1bc5876e69301198e60d8de0f276e5310cfe887c9541c541d36886f3956c4ea"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "0a75b605b53fa23a79f3b4b3b381ad978e262414566045d5dcc9aa9c3710fc8e"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
