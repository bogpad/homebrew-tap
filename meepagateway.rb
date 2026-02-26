# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.70"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.70/meepagateway-0.4.70-darwin-amd64.tar.gz"
      sha256 "5ca62594eb62b93d8f64e2992deeffd9ecd5483d22bb7363a49c98520d460f85"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.70/meepagateway-0.4.70-darwin-arm64.tar.gz"
      sha256 "72d617c5cfd8c8657237fb33eae49255b90a4bfde1fa036b0409dd35852b0b12"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.70/meepagateway-0.4.70-linux-amd64.tar.gz"
      sha256 "b172f04b8e6c2703a1b4168f35be883b696e1db65b0040c1374fe64340c07db0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.70/meepagateway-0.4.70-linux-arm64.tar.gz"
      sha256 "8072060143d76fbe19daf63720e94e18e37d6fcec66f585275f5ea465d9b0be8"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
