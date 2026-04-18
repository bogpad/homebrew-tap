# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-amd64.tar.gz"
      sha256 "e36fa2b02f6714ec563328931352685a34947a513d480966375f5aa89d086538"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-arm64.tar.gz"
      sha256 "2d262b2c5b642e2e94c7f8553fc03c886a6725b78b571abef5a3df4ab9193789"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-amd64.tar.gz"
      sha256 "a9f69518be2e2a6c46a41f475bc74dd7f72319d371eb6f3907cb237b44d92530"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-arm64.tar.gz"
      sha256 "397b9b5ae60b6e6e80a79b8124bad3b699f1dfbb088ec5418d1c0f17e43c5475"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
