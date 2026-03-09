# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "f9beaa204d5ef14380d2aeeaffffccad6f38f84185c654d63e6224f87d9fe6d0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "acd902bbcdfff71b521ef2ff268a4c59f8b14855fe0fa0184906905a1a26ee85"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "e7d9ef3bd7772dbc6963c9eea238cf7546e39e9ce534b40ce2ed125cc00a723d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "1b6f37fc24240dc78e4b7bc0241d8bde78afbd7983a0a65a01e33d375ae11d07"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
