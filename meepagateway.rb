# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.21/meepagateway-0.4.21-macos-amd64.tar.gz"
      sha256 "19c3f4f66c266582721625744d0c1a30514f54b973e2cfe5cb81e006ce5487d5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.21/meepagateway-0.4.21-macos-arm64.tar.gz"
      sha256 "dee44728458a388c882216a9f37adc49b42f70824a09fd34c36ac36b0bd1e901"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.21/meepagateway-0.4.21-linux-amd64.tar.gz"
      sha256 "e48137b97f231e373e2b139de2fbd7302432183b08f598f65ad4a951e3e0f320"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.21/meepagateway-0.4.21-linux-arm64.tar.gz"
      sha256 "ff8a56b9e1f19fcdd89b5a1d9fac183c0cd25dc33d75f78050eadbc27624f23d"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
