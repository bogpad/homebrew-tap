# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "6cc2c1a7806e7aa3dc51cb4116abe61a4468b131a58c6cf974fb7623a3f95a93"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "92577ddaab7410ea5b193dcfae0bb7a3e1a47816069afcf0e4f8052a5008edaf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "8511b36220c2c1a8413b77b2ae21d48e6f0245e8e867973ae3bd211c7525ed6a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "3cb280f736284ba7696f882bb40dfcc030465f06a00e5673f604adbbe8c8a6cd"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
