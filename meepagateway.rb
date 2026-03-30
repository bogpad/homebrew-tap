# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "467180f8c07b49053975cc0e2dc7b8c382fe22fc6f2528670146c8eb5ec9f6cf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "dbc63beca8fa622c39bbacc295862865ea1f7be261ecbdba60fc7577e5fb4625"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "95987f64c5b612fa1360e1b0d761dc7cf1d1efbc3a9b5ffb5c6191d58dbd21c0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "cc4354ed75e964b800662a831b67cf210aa3e039b4ddece1ef2f55e55b44961d"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
