# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.4/meepagateway-0.4.4-macos-amd64.tar.gz"
      sha256 "d02940e0e95ba0bdf466a180848c5db2a7f89ee94b4113038c197d5cd85204d9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.4/meepagateway-0.4.4-macos-arm64.tar.gz"
      sha256 "c2c72a3a97f1f95f7fb0665ea7acdb356dae792415e2ab78b34507ca24a3e333"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.4/meepagateway-0.4.4-linux-amd64.tar.gz"
      sha256 "458fbe3e632a15dfa85a7e244171b5bfb2f6f6a38423ebb8b21e15468a7da70d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.4/meepagateway-0.4.4-linux-arm64.tar.gz"
      sha256 "7499076ec7f913ccc07377fee49971589f3f55b320d8540939955992ddf09ecf"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
