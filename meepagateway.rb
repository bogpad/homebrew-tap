# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "b9ddffeb3ac42c0aa590e641c477e92ca1f8bb8abd247be29c11c7e9d2929efc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "a22f686970cf29acf75ff9cbcf17c0dfe944ede4fffba436e6664b5425b4d8a6"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "14ebf66b08fe8cbecab86928e83ce52cf6e0c5d06d67a446ee3fc6eb98b70254"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "ae76815492c64b80b4ece11bc5dc5820a493cd8c5ad34fa6b64d74c8cdcad1e1"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
