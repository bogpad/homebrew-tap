# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.32"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.32/meepagateway-0.4.32-darwin-amd64.tar.gz"
      sha256 "0faf21e8e904bc7264b40dca7785a4f41a9e7fa623d7690fe51bd95b42e78d78"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.32/meepagateway-0.4.32-darwin-arm64.tar.gz"
      sha256 "a3a9fc83275d00dae7b032f3a024f0060ff584bb8d6b3224c87bfec101dbc905"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.32/meepagateway-0.4.32-linux-amd64.tar.gz"
      sha256 "9bd8ac38ed22b14405ad9fe372aaa7eba99404fcfeeac59a43b391a1c224e11e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.32/meepagateway-0.4.32-linux-arm64.tar.gz"
      sha256 "f33690659ff4e65922f9cd8f10135604c23b875cb4d23037b619f878d6d8a51b"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
