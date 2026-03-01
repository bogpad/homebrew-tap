# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.17/meepagateway-0.5.17-darwin-amd64.tar.gz"
      sha256 "ec9fac465f523c03aad5578155f0c0d8fdd32ec60853aba5468d5a30a51b45d0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.17/meepagateway-0.5.17-darwin-arm64.tar.gz"
      sha256 "86d926caef728a0bcf0528aad1c4c1fd17e47288255864df65b1fb508d1d4da5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.17/meepagateway-0.5.17-linux-amd64.tar.gz"
      sha256 "30074b9c73f82a935ecc86195e7163ddf162ed80ee29ec01cb3f555ba0ef2400"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.17/meepagateway-0.5.17-linux-arm64.tar.gz"
      sha256 "1d9b475b01aacb52eac09132fa052a3fcbb3f1b6b4f5f0c44bffb4f7b1ff9ac3"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
