# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.7/meepagateway-0.5.7-darwin-amd64.tar.gz"
      sha256 "bde69f1b0463c0ab2201bfe3526b1c0bdc526a4a118feb167599aab6a07398ce"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.7/meepagateway-0.5.7-darwin-arm64.tar.gz"
      sha256 "921c7cd0121ca81cbe1e8c797baa00e829cfaae1965e23a8fde4138834196adb"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.7/meepagateway-0.5.7-linux-amd64.tar.gz"
      sha256 "d08e777d1e1398486e7ee6302dc92c1f34c78e48989bf30e241925cbef78cbc1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.7/meepagateway-0.5.7-linux-arm64.tar.gz"
      sha256 "e23cccd0e91d93fd2b65678093221b3cf88b8af9e5208244e99506611e882431"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
