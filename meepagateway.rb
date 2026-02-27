# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.0/meepagateway-0.5.0-darwin-amd64.tar.gz"
      sha256 "44c253fc09daf211fbb745171292e8a787d79df674a0ce8e9ca164385c0a970d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.0/meepagateway-0.5.0-darwin-arm64.tar.gz"
      sha256 "6e3e087af4c9c943f3956e2b0f36ff2524b597739807979ed0413e680f383e91"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.0/meepagateway-0.5.0-linux-amd64.tar.gz"
      sha256 "988d5e4350e84c2af6036d160db549d17caa5bd6cfe67f8ca71be683348d741a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.0/meepagateway-0.5.0-linux-arm64.tar.gz"
      sha256 "6b792a03cb521b440e815545add367e912f5a0c23b4db33146729f0a43c73691"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
