# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "61c459b0f2e94566a4a6846c073b6b3133ca1fe14f7e52479cd2a9f3b4eb358e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "aabbd2d744c0caf08262785bd02bb6e9bb44090ea85eb7a8e181ff34a667d061"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "bbee82de7ab6815dc9cab6f8a3dd013c97e96b348630828b496173c57de5c54a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "e288a6ff83ef2ce7d5df150e8d41ff8a103a82bb6aed836ef0f3cefd241df22a"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
