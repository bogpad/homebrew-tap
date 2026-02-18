# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.23/meepagateway-0.4.23-macos-amd64.tar.gz"
      sha256 "ae83fdcd7676f304c2acd5fc37484c0304867efafd7d0a5a5e4848cd9608ba1f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.23/meepagateway-0.4.23-macos-arm64.tar.gz"
      sha256 "056527b049822a39e966c7630e8dd1b9fa09fc26060ecc6293c9dc47fce4a2c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.23/meepagateway-0.4.23-linux-amd64.tar.gz"
      sha256 "6c25735c7e41319817fee1bef632c9275a31e9f02942d4cbbb4437a9beff763b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.23/meepagateway-0.4.23-linux-arm64.tar.gz"
      sha256 "ed3fd871f987e0dad329641c552a8995b013c0e9cacad9de53b899921ed1ef4f"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
