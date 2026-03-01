# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.18/meepagateway-0.5.18-darwin-amd64.tar.gz"
      sha256 "52dd6cad118ce34e583b70dd76c0f4899c16999988998bda4f6914b3022b1c55"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.18/meepagateway-0.5.18-darwin-arm64.tar.gz"
      sha256 "e8c2c5c6b498737b8c7c5d1ece18a3b6e7413c05686166f7c34bc3bf8a0f13af"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.18/meepagateway-0.5.18-linux-amd64.tar.gz"
      sha256 "c442b3a78a70bd9a3d79e86fc603ba5a78093b11f938ce4f811621d6edcd2904"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.18/meepagateway-0.5.18-linux-arm64.tar.gz"
      sha256 "d0d10472546187abace4a6af40d302f5be75057cd9abf4d26b4cbe8a068413b3"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
