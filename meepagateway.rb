# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "7c387c6b7a4bbcdbcd1d2f6a705019c965ea44cf5a6512d7b3525e4cf069038c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "7ba74625807c996592d150ed8f6014f8cb738cc431f180b5a6b687b23910a324"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "78429b23235dfa963c7e766720438cc9ceb7334f64e4ad41eab48f349bf171c7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "5118023f7cc212544324f72d069fe05ea76691a2759bb077927bff30fd034866"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
