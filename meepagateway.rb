# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.2/meepagateway-0.0.2-darwin-amd64.tar.gz"
      sha256 "6a212bcdc7799ab1933fa3729765202fbe40729b6ce688fba1b5c836575385df"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.2/meepagateway-0.0.2-darwin-arm64.tar.gz"
      sha256 "baee9548a6385917b50c63ceba1979dedb14b27b7479ff7c5f02241ecd946793"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.2/meepagateway-0.0.2-linux-amd64.tar.gz"
      sha256 "19e20cbd73f5366fcc9c378eab66d78b2156431d121a6fc3b25aaa9489a7d7a9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.2/meepagateway-0.0.2-linux-arm64.tar.gz"
      sha256 "20d47759827d63375bf5f2c4b316c37e39cc43bfcbfdfb3fce81a19f7b296aa2"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
