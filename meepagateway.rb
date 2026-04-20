# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-amd64.tar.gz"
      sha256 "3deb02caefb80132e049aa9fbca1a9257c5ccea3448c5415661291e43a5fafaf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-arm64.tar.gz"
      sha256 "717973fa5727d11acadf46925b5809e5a7d35b297ea2af8fb8f01141b3a065bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-amd64.tar.gz"
      sha256 "ca7f4c9c9a7f9af86391153f8df1b0c936738a0db8d96b1fbccb9c3418dd4441"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-arm64.tar.gz"
      sha256 "940c0a55ab2b58de82fff4470a5105aff21274673740772b4de43344143096df"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
