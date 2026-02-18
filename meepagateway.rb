# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.15/meepagateway-0.4.15-macos-amd64.tar.gz"
      sha256 "269631c312110ca543d7a352a855d94231cbace79fecc55416c2c357e28ca059"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.15/meepagateway-0.4.15-macos-arm64.tar.gz"
      sha256 "edcead351e1a28746de91dd5f5a219237ea6d9690dc174be24f1144f80cac798"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.15/meepagateway-0.4.15-linux-amd64.tar.gz"
      sha256 "ec24753adcea75489cd70ad41f8ecb942fbf3eb04ca7652a71e3f95971e9b724"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.15/meepagateway-0.4.15-linux-arm64.tar.gz"
      sha256 "98377c77074e4d7ce08d1f430cb736d6fd446c65b334e761448077dcccafaa46"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
