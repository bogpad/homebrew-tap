# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "cb8d9eb4234ec408d34957ccd7f705e149ad4f6abddf88436c3bd4bd951717cd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "24755ade11674c76977459983f93706968ca4ed14aa132030ba4338baed92c1b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "13cc817e6d9d4246c42d0dea632403ad0f67b8d40f360dc507b1bc7c1971e290"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "554ae19dce70d663f46fee9150a785d42424a05ee973d22f228ea10e573c71a5"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
