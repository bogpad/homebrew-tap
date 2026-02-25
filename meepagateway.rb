# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.61"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.61/meepagateway-0.4.61-darwin-amd64.tar.gz"
      sha256 "251397ad6b604ec149eab527d476b3aff00ada9b967be10acc7079bd3a42318b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.61/meepagateway-0.4.61-darwin-arm64.tar.gz"
      sha256 "4dabc7016f9bbc04594c298bfed87422e5520aa93e441cfce72e9c5a00e44eff"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.61/meepagateway-0.4.61-linux-amd64.tar.gz"
      sha256 "48a66487ba77f9ab5b54a62a433ad6d62f2c1dd787822ab33c5d27cd1c9a3473"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.61/meepagateway-0.4.61-linux-arm64.tar.gz"
      sha256 "cb337875d83d70ef0f7c950b8df2f3713b9e458d7d9835fab9446f8c02887534"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
