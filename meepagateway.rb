# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-amd64.tar.gz"
      sha256 "d96845c0a9d145642a5f78474813753b96938f4975d640888731a0c4e9987a6c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-darwin-arm64.tar.gz"
      sha256 "38e08a0baaa3135c128ffdfccdd4862dbc4a85d5b36b0abdbcf7cfc3fcc53c01"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-amd64.tar.gz"
      sha256 "773ecce3b3fd0329d1b0a21758392d8a0fb153c9dfdcd5d7c76037f0f186850b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.9/meepagateway-0.0.9-linux-arm64.tar.gz"
      sha256 "2b370f1e31465b4dce5e30db63484e9bf763d8f62c09baa3ef13c38cdfbcf76e"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
