# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "111dd4032d4430b385d24597941cf629492ee1819bdbde59c2db9b44de7a7a27"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "523ccf2ed94bca110c59181115cc12d610a02f070859d1c99d8575c17dbd701a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "895ad3b0e43a0055c9a6c368fbdb49b641bc6e66846a73039fea57ad61f22ea9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "086e68b3c40f42c40e43b4a6ec24688aee905d0da2303bc7532c54aed73ceaab"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
