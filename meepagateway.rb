# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.7/meepagateway-0.3.7-macos-amd64.tar.gz"
      sha256 "7f298ddc2f9918ac96ab87c4228e1a7b23845b6e8d16df5464ee6710f752ff6c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.7/meepagateway-0.3.7-macos-arm64.tar.gz"
      sha256 "e7dbf4809e8cb5094195d16c6bbf1b4e3b4e173c8489fc48d4019301597f2d7e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.7/meepagateway-0.3.7-linux-amd64.tar.gz"
      sha256 "de02887e066fc29bef9d4315da4d0a5b9e1c32209101c7ecd991b3577c09bd5f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.3.7/meepagateway-0.3.7-linux-arm64.tar.gz"
      sha256 "b42688c2241c73b3e461d478caca41de317776fe104dc3969a5ca99a13436f73"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
