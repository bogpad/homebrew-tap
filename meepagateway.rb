# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.27"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.27/meepagateway-0.5.27-darwin-amd64.tar.gz"
      sha256 "3935a8b2100546e94282ec2353103cfb52ac10cd733d50d7b90b0cb771da7fa5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.27/meepagateway-0.5.27-darwin-arm64.tar.gz"
      sha256 "5e8e03f151b0391588bafeb080e5664eb208308722723d65df691b6357a8a3ce"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.27/meepagateway-0.5.27-linux-amd64.tar.gz"
      sha256 "8a651306a369dfdc2bcff8ece602214bfc12c6febc00ffc51fce7498ec37e177"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.27/meepagateway-0.5.27-linux-arm64.tar.gz"
      sha256 "db5b7a1c02aa5a2bf559b2ee25da270dc8c7ee6346670d1ab670766369ecbdbf"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
