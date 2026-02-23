# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.42"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.42/meepagateway-0.4.42-darwin-amd64.tar.gz"
      sha256 "2d894612b9465d672fd4dcc41916070ee2671edeb4ebac49c9783d709c7c3702"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.42/meepagateway-0.4.42-darwin-arm64.tar.gz"
      sha256 "a08f8c41c8492f9c025e6322f97fcdc1df95b9044ae2b6b15f1950f42608e81e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.42/meepagateway-0.4.42-linux-amd64.tar.gz"
      sha256 "a9c536a0af55fc8945abd3371239763663b8cae3a44c1abf36400b025098cc00"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.42/meepagateway-0.4.42-linux-arm64.tar.gz"
      sha256 "efe2691bf92fa474f29bd8a46a101675d1b9a51f99f24365485d802e0694114e"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
