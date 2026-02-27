# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.5/meepagateway-0.5.5-darwin-amd64.tar.gz"
      sha256 "1296bee3b91f0f9712f5a9341e7b56aba094889fb5aa4804981cedcd07dcda16"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.5/meepagateway-0.5.5-darwin-arm64.tar.gz"
      sha256 "ab6f65edd83d297566b337867a3b310558bed4e4624ba175fc4afd5fd4da2878"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.5/meepagateway-0.5.5-linux-amd64.tar.gz"
      sha256 "0b18ffe017a338c3371ac2ecd1286a4d7de7944408e11008fb38207c7037a572"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.5/meepagateway-0.5.5-linux-arm64.tar.gz"
      sha256 "08e0103c7d072da2066b62ae6d7885b7b0131f31aae4633139b8f2fea3dbf794"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
