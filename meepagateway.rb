# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.10/meepagateway-0.5.10-darwin-amd64.tar.gz"
      sha256 "1babb83fab615bc35a9dc7e06d7f095de7b3c875865bdec0d67565102e193d2d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.10/meepagateway-0.5.10-darwin-arm64.tar.gz"
      sha256 "0ae6a601f266baf019b37c58ffca390b36a0f37a6d5115f79742f9b3e3243c7d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.10/meepagateway-0.5.10-linux-amd64.tar.gz"
      sha256 "e954b3bda89faca8ba824e429b5d0eb77f8deb3cc663ffc3d0cacd734ac7a8c7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.10/meepagateway-0.5.10-linux-arm64.tar.gz"
      sha256 "b3643006f9b9640029018234ff0c3b72fd83adf423de56771ffeb457e8012e36"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
