# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.22/meepagateway-0.4.22-macos-amd64.tar.gz"
      sha256 "62ef6e25b6c4053021ca9a9e4c186f27abad5fb98f9a128aa1ec65332102d22a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.22/meepagateway-0.4.22-macos-arm64.tar.gz"
      sha256 "bc5edc46da66e5696b91cfb2ccbb5922fb718ed167360f5e0ac9134063cb417c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.22/meepagateway-0.4.22-linux-amd64.tar.gz"
      sha256 "a7cf81e534f2f6ba30001e74032f64b794e5747c390472b1da9d0585150ad337"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.22/meepagateway-0.4.22-linux-arm64.tar.gz"
      sha256 "d6e6228b4e5709f8d64b99da2936c8fc76f2861100fc86505975e8a77c177dd6"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
