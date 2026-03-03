# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.36"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.36/meepagateway-0.5.36-darwin-amd64.tar.gz"
      sha256 "674c2c93ed3d790e12eac3ff7d9fcbfbf6b01fee9044f78c21949ad4dd3ea135"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.36/meepagateway-0.5.36-darwin-arm64.tar.gz"
      sha256 "0c1226a23a5401350d5a06adfd108e89d8a8972339895d0eb2bed82cbe1bce62"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.36/meepagateway-0.5.36-linux-amd64.tar.gz"
      sha256 "3063a03edf339c4856495418a735b3da386f25aefaf8179202e5e344e0904154"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.36/meepagateway-0.5.36-linux-arm64.tar.gz"
      sha256 "34171f6127e14b855453dc04eb485f7afbefd63b14de4f9c6e7561dc1617cee2"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
