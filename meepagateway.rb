# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "18aecc5c7e844671b93dec9a86d04b10ca4922498f9864d885ddc8b7e3ef07ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "16f6a76bf3d715f548c59787f77bfbaaa052a2b8f1f9efa81b5c9ef71a768daf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "a26c095f67c7c827277d828049c27425f7dff72e6640c48e9df3e0b95ba9d630"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "2d78fc2aeaa2eff34a79a7720f94abad23bc720ccf8bb2fe7d30c2eb267f7276"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
