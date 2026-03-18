# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.3/meepagateway-0.0.3-darwin-amd64.tar.gz"
      sha256 "b5d17ed39670ef32db18d90a431ec586d2aded8da035d514e0dc8d4f07b5f8ae"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.3/meepagateway-0.0.3-darwin-arm64.tar.gz"
      sha256 "08bdefe283bc6ba217054f90c0c36450395de19b3868b3a8c5623ab5060cd617"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.3/meepagateway-0.0.3-linux-amd64.tar.gz"
      sha256 "f713009a099a665b9f7a7a7076ea5d13ca2f2f0ed009f45674c5e98e9512d096"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.3/meepagateway-0.0.3-linux-arm64.tar.gz"
      sha256 "92fa4e0f6deb91be750b4c50ee936dfe5b3523a6f7124d8bda425254572fbca3"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
