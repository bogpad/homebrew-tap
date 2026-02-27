# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.3/meepagateway-0.5.3-darwin-amd64.tar.gz"
      sha256 "1a66b2c7769bc31a052f22a586cd84f632a95a2d1a2c8751efc35361f1230a67"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.3/meepagateway-0.5.3-darwin-arm64.tar.gz"
      sha256 "15d9d20ec2b700d6c823b51b244001181be29f4ccbf2fdf6b54ecd34ad070f54"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.3/meepagateway-0.5.3-linux-amd64.tar.gz"
      sha256 "c0d2f8c27e401fb117707408515a139464dc9c4c599cbd85a9883fa375037e6c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.3/meepagateway-0.5.3-linux-arm64.tar.gz"
      sha256 "285c0d0ba3dd7d362f2137324b547d79ffd0dca31450a2f6bad301d5e835357f"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
