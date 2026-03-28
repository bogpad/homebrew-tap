# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-amd64.tar.gz"
      sha256 "11f56bb12ccbaeb11dea1d9d317b380e25efb62b1a50cdfe6c3b769975a62caa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-darwin-arm64.tar.gz"
      sha256 "9a9e9adb9d71e6b9f7fba54c6b3b86130626a2b0878780f6e4c6ef6769988d68"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-amd64.tar.gz"
      sha256 "db131dd1098eb50941fc1d01f4ef0501d8ab466c0c6ad41a5ddbece076a7a2b9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.7/meepagateway-0.0.7-linux-arm64.tar.gz"
      sha256 "06c8a23749e92657893147afa2239ecea0058266c87c247c9a28897b78eaab76"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
