# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.60"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.60/meepagateway-0.4.60-darwin-amd64.tar.gz"
      sha256 "d5c1b215aaefb164da0b336f7be2bab739e7bd8cc11e9117c7206dda5891803a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.60/meepagateway-0.4.60-darwin-arm64.tar.gz"
      sha256 "67af6996c5b43e03ad32bd61fc38b1a834f4f45f6ea81fbcb87de13163ac5b70"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.60/meepagateway-0.4.60-linux-amd64.tar.gz"
      sha256 "7d0ec2590031846c371b8718d89c29c376d36b5c8cc9b540cbbaacda7452f49a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.60/meepagateway-0.4.60-linux-arm64.tar.gz"
      sha256 "b2be148177a78831c6d98045d395dc82ac84b3e785f094f6bcdeecd4aa60ac50"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
