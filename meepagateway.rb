# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.19"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.19/meepagateway-0.4.19-macos-amd64.tar.gz"
      sha256 "f8012d883bff0614e7ccc2a6dbf7fb2e5876ad6b722f910f4062a1c76f7112ed"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.19/meepagateway-0.4.19-macos-arm64.tar.gz"
      sha256 "34cc0d68d0eea5f56dbfddc971f6b63ce1a109c719bb1276a475f287c2b57903"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.19/meepagateway-0.4.19-linux-amd64.tar.gz"
      sha256 "d0cdceb11c689c4566ad78a00cf1cdb52f2c122d6dc118949bfda0a6db6913ad"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.19/meepagateway-0.4.19-linux-arm64.tar.gz"
      sha256 "e9dea9e3e614a4df14e76b402190d4935a8abd590ba531de566b09dab2367e52"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
