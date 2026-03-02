# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.29"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.29/meepagateway-0.5.29-darwin-amd64.tar.gz"
      sha256 "5f5b67947bad90d52f731dab07a9aafb527fbbfa9ae3c8e7cc21231c68a3f22d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.29/meepagateway-0.5.29-darwin-arm64.tar.gz"
      sha256 "fa660843855d9f2e23e8dd25c00abf209f1c70daf93a9035e8cdfeb8d8f85204"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.29/meepagateway-0.5.29-linux-amd64.tar.gz"
      sha256 "e2b91a8c5edaf4b804a3ecd10536a09c8f16b2090020e0ca8b30de34fefbc256"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.29/meepagateway-0.5.29-linux-arm64.tar.gz"
      sha256 "edbca59f525ae2d8e2fcf5449f56a28149f118f724af5fa71f47c2c207ea6038"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
