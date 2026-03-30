# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.70"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.70/meepagateway-0.4.70-darwin-amd64.tar.gz"
      sha256 "ed59ee210def42765d376c5b5d0de1ef7c01a97c1222be142f48c0ee14128faf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.70/meepagateway-0.4.70-darwin-arm64.tar.gz"
      sha256 "6e02951f19f0a47327ebd7162491691b93199f35adce48dfda0ac83b815e567d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.70/meepagateway-0.4.70-linux-amd64.tar.gz"
      sha256 "df5d093f748165783c49933cf71925fa9425071cb5d5d9556fe0f24f78293645"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.70/meepagateway-0.4.70-linux-arm64.tar.gz"
      sha256 "0bddacc569638c2899d052a9943746033686f35645d6e620064f6cce97db8a4a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
