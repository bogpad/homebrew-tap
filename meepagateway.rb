# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.24"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.24/meepagateway-0.4.24-macos-amd64.tar.gz"
      sha256 "0c3bb859efaa5146abff9d027a026ca4f273c74ba6c7ddd771bfea579e25f11e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.24/meepagateway-0.4.24-macos-arm64.tar.gz"
      sha256 "1702207fc358855b6e3571e5fcc6dbe7061925fb972b93b4471eccc4a0bd306f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.24/meepagateway-0.4.24-linux-amd64.tar.gz"
      sha256 "83402a9008c7163f7463933fd5fe9aa1e74e40a06f12c59f373be53e81371321"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.24/meepagateway-0.4.24-linux-arm64.tar.gz"
      sha256 "9360f99e9c7c499a856641d0f7bae9bffef9152a919d3e62f8455cded2db74f9"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
