# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.5/meepagateway-0.0.5-darwin-amd64.tar.gz"
      sha256 "e518e4804ef29241ac0300ae2c8cdf7db471299a83d42573f4d745fcfd780f50"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.5/meepagateway-0.0.5-darwin-arm64.tar.gz"
      sha256 "7ff9cc87340324c6629986d91aa124884370996970df3d39e91bdbf85c26bcbc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.5/meepagateway-0.0.5-linux-amd64.tar.gz"
      sha256 "e33374443b09aa6ef95e8c66bc92ef0bb97293590e0c3005b0293f7cff70b52a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.5/meepagateway-0.0.5-linux-arm64.tar.gz"
      sha256 "99b8ca368ba819b25e97872a934971047325de0e55449d822478d04e86cf55c2"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
