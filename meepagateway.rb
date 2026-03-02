# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.31"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.31/meepagateway-0.5.31-darwin-amd64.tar.gz"
      sha256 "c1c576a45a963f24574718104d3e5a21e1f8120242cd082c44027a78daf8f4aa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.31/meepagateway-0.5.31-darwin-arm64.tar.gz"
      sha256 "726bbf4283bd26a343e224e118098dcc94126262c82e55c7f0eb3223bd1d4f12"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.31/meepagateway-0.5.31-linux-amd64.tar.gz"
      sha256 "acb2f494eb3fbe2581fb44f998827e1a760d3fe23419a347bc97082627c14e74"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.31/meepagateway-0.5.31-linux-arm64.tar.gz"
      sha256 "bd5d03bfba37b4ddd0e195e120503079163d9b6636d8cc64645aabab7797be88"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
