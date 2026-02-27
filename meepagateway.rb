# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.6/meepagateway-0.5.6-darwin-amd64.tar.gz"
      sha256 "0efa7b11fd8575cca9aa2a329955f3b96dab53c2c9820f88bc432a0ce12a6643"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.6/meepagateway-0.5.6-darwin-arm64.tar.gz"
      sha256 "8bb753e9deaf1f7a98ee5873c84fd532519372e8d6dacea107a7d07d03345441"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.6/meepagateway-0.5.6-linux-amd64.tar.gz"
      sha256 "a8c1fc90983dd970d6c36640dbb11ed18eec81b5736bc9ad1246cbc9d53781df"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.6/meepagateway-0.5.6-linux-arm64.tar.gz"
      sha256 "ab8b9a1ab9edb293783d5fde84aa3564ff9ba89d4140cef313b9f9594fcdc96a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
