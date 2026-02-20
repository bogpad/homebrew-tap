# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.29"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.29/meepagateway-0.4.29-darwin-amd64.tar.gz"
      sha256 "6bcaa0dc470d7624aa88096f1f1e9af56a944daea7bbef27f805391d4b78673d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.29/meepagateway-0.4.29-darwin-arm64.tar.gz"
      sha256 "6f00057e44dd714d46e0162ec47ebc89f11bd5f59c667cdcce057dc3013e8218"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.29/meepagateway-0.4.29-linux-amd64.tar.gz"
      sha256 "3aee945d5d1ba5dffaaa75fcf9c65b134f82f2ed97f2fb0b16f39ab36d3fc35a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.29/meepagateway-0.4.29-linux-arm64.tar.gz"
      sha256 "36ab9660f0b6ac9ac175728ace90d54da83dd8db5119f61135c56024f3546c15"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
