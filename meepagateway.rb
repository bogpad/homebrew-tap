# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.0/meepagateway-0.4.0-macos-amd64.tar.gz"
      sha256 "3417173051df5c7ba5255b8eec6ccca28d3f717f9460c66b9fc9dbb07e90f012"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.0/meepagateway-0.4.0-macos-arm64.tar.gz"
      sha256 "97aaf5fac66c016690a41740967d30195bbb701fcb90bab9ab765bdfe69d57a7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.0/meepagateway-0.4.0-linux-amd64.tar.gz"
      sha256 "08462f72ece71150c7b5fda834e974942d2d1dfbad1ffd91852c980a17a1aed0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.0/meepagateway-0.4.0-linux-arm64.tar.gz"
      sha256 "b47cb5d773daa07ad28c68c3b613f2fb3a7300ce8cad03901f3a9b8ef990b817"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
