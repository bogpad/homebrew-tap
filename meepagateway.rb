# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-amd64.tar.gz"
      sha256 "09c589c4ca9fe135d0f88bd700c59dfd9639a46a9b998cba2557734f1f613fd9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-arm64.tar.gz"
      sha256 "3484d45bbd57e7e18bb8e2ed60b6d0ea6e87984bef0cbff0227ff24e55f592e0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-amd64.tar.gz"
      sha256 "23fec09971ac264c11470c4796cde70d0c8ab41ce4883d3e6aa776e7ccb446a0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-arm64.tar.gz"
      sha256 "bcaffffb4927fb4e067538918e3f9ba9f28646a74e1f8d38384912058d4da2df"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
