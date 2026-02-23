# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.41"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.41/meepagateway-0.4.41-darwin-amd64.tar.gz"
      sha256 "8c715099224f8a44fb065b20e3cc645dfcca382cf47cae7c239ead9abadf82bf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.41/meepagateway-0.4.41-darwin-arm64.tar.gz"
      sha256 "39bd60ff5720de6fbcd30b99717f53bf7662af4f47722f2719d599452bdb4cf7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.41/meepagateway-0.4.41-linux-amd64.tar.gz"
      sha256 "c7f2608578ab5b5c6b95d5aa56d4891dcb1612ab7390735e92ba0ec6f0665a55"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.41/meepagateway-0.4.41-linux-arm64.tar.gz"
      sha256 "80e7268527a0de63dab618f89866f41dbe7689e24b8aed92765d61d4b0673f2b"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
