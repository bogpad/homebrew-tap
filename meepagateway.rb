# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.44"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.44/meepagateway-0.4.44-darwin-amd64.tar.gz"
      sha256 "5a07e9b2e0ef76adddecba5973adf422cb82fe66770827ab98f00f5eadec588d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.44/meepagateway-0.4.44-darwin-arm64.tar.gz"
      sha256 "6c52ebe7672eaef2de802534ebfc82866545656f25bc47e986f5fb4d4e350e3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.44/meepagateway-0.4.44-linux-amd64.tar.gz"
      sha256 "81c558416bafe351574abe8535973b6af25ca15699c07329e8a6723fb70673c3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.44/meepagateway-0.4.44-linux-arm64.tar.gz"
      sha256 "41f31469c63fc93e57aca61b307b6b03dad5b4d61d74bd49e8c84985fd9bc240"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
