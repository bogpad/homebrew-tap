# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.4/meepagateway-0.3.4-macos-amd64.tar.gz"
      sha256 "ad0149726f1386b51812169c7cb510aed0699af52923efbda739463dbe515a87"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.4/meepagateway-0.3.4-macos-arm64.tar.gz"
      sha256 "a59812350cce830dc984e8c0df2fb5a14bf0a5ac10a464259b05416ce5a77daf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.4/meepagateway-0.3.4-linux-amd64.tar.gz"
      sha256 "56730f0e03659b724dd536f4c3b83ea62ee97d335b65610b8df8fabbde9e944d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.4/meepagateway-0.3.4-linux-arm64.tar.gz"
      sha256 "ef0c9779dc3dad890eb9ffbfe31229850a704725f733c8b20acee1fc4c655e08"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
