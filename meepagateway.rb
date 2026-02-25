# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.58"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.58/meepagateway-0.4.58-darwin-amd64.tar.gz"
      sha256 "51367f333a10c416c6b97f012916c3e63cc7788e41635e6a7ac394b755561ab9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.58/meepagateway-0.4.58-darwin-arm64.tar.gz"
      sha256 "b7e71000556b62d174f769c35d11f413de33890b59f2ed7ec36768d8e4eee291"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.58/meepagateway-0.4.58-linux-amd64.tar.gz"
      sha256 "3b4ce94cd6fcb21dcf5fb46cf9cb9029f9c61baab9d06cdd7b64d114f40aad82"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.58/meepagateway-0.4.58-linux-arm64.tar.gz"
      sha256 "74a0768ba5f91d5f7adc841f6379d9ecd97aae3af812a46e146c55f88fe1ecaa"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
