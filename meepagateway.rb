# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "c9a31dbd2865a2fc50e56b085b504a407429a56785ab076dc3c27ca97c167f7d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "3e063c19500509d89f79b228e997d84efd40879d8da046f47590b2dba149e3f7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "af6db321fa048214edf4bda22f383f560cb384e199bb539ed43875dd2c72dd4a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "bbaddec7112c0aaf0aada5cc6b86d7ff430882a0ac77fbaf086b7403738759f6"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
