# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "7a6918ba33dcc8c4025cc160a8a3e24581c199cc1c3b6c0d474eb592e96d63b0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "89a807834c2f7fbdc2af5fdf3f9ae8cd22108ff9b7fdff7c50cd2915f6e93e01"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "a9c992665d566458ea5989f7b81ef3a7419ff01f75c1c815a24ddaf5a3cfef56"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "528f74dd15af993aee95ef8269dc030f4b695fd0c43f82b0f2e5ebbe0e4973cc"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
