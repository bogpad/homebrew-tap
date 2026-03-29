# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "d6ec8abb52f9b4e328c0fd6a0d8eec557c7a6a2ecd189d58747f2ff35f4b4034"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "c50e04b2f5d42accd111ac694aca6a272de0707a0073ce69b5754f5c71743c6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "60019f042719c9ed4f3a3554728d97a98d7a1be0ad1fa9d9829770ba0019ed13"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "726d2a551e0fa52a5ec8cdf85ea3f43e78f24b32ac5ed3a9f57f16afa7f32efb"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
