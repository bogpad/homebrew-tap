# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.21/meepagateway-0.5.21-darwin-amd64.tar.gz"
      sha256 "40c451950d5c429265faf57bb45ec6c4f0e6f0c238f3dcbc7ebcfaa085163f8e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.21/meepagateway-0.5.21-darwin-arm64.tar.gz"
      sha256 "38ac13f3a3c7f11ce0286d20b04fbc6f66092f9e8e6b76e988c051986ae26fe9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.21/meepagateway-0.5.21-linux-amd64.tar.gz"
      sha256 "aa65bdb3f985e522c9dc1f439b16052b91b9cfb1a0c46f57d68179a7e5c15ce7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.21/meepagateway-0.5.21-linux-arm64.tar.gz"
      sha256 "28cad4ea798e710245fc0bcc3b32af672e8a2ae226db087705bb3816b30623fe"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
