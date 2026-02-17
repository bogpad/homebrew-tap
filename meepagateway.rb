# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.13/meepagateway-0.4.13-macos-amd64.tar.gz"
      sha256 "7990c4395a5aee0fb8af1f0080cfd2338d2536dcc763c24dded7d4e475a25f88"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.13/meepagateway-0.4.13-macos-arm64.tar.gz"
      sha256 "557fcb4beb53954b92b52772cd952955833f8b96b3e8ab5d5f337ccb8e2caedb"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.13/meepagateway-0.4.13-linux-amd64.tar.gz"
      sha256 "7febe8c0a3b4f9a290153d684a05c08018d69ad9505cb8a87b266563cc4bc074"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.13/meepagateway-0.4.13-linux-arm64.tar.gz"
      sha256 "9c788c957943012d522a9834228f3289a78f81cf45762537d32fb7927ca3f181"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
