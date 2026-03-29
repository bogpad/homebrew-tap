# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "64bd3a2c6b3d99714f7ddaa44aecf5921ee40e2c08400e810d8e73cf39f6bbf7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "f7734f0e39df3f7399ebf4757b4cb05fa1533855a073eed2f83206a16cb851d5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "a8d45c37b0c0dcbd5b3bcc79eb3bc677f439f2efbff9a2adbbf2da1a30ff0027"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "c1561440407afba8516f8cd532763f98e3e0957441e63f6e23c98bbf46786810"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
