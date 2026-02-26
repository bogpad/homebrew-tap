# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.67"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.67/meepagateway-0.4.67-darwin-amd64.tar.gz"
      sha256 "a1c32e499f39274209622042e4bd31eaa8ed6891fb1950f6981bff1107ed0092"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.67/meepagateway-0.4.67-darwin-arm64.tar.gz"
      sha256 "63d33304e74630d6364717a0cca0424d43ff03a74bc5898b1fe1ed07fd9db461"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.67/meepagateway-0.4.67-linux-amd64.tar.gz"
      sha256 "0003acfbff08193c95733509e753e2c9a4a85bf18645eb196ca9985fc09010a3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.67/meepagateway-0.4.67-linux-arm64.tar.gz"
      sha256 "cee7050378516e4a037542db216c5600acfe95f8b365911e0f5ce362ae7a9a9d"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
