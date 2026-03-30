# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-amd64.tar.gz"
      sha256 "901dbddc8c17f15f782be7bdc1505807f99a681cab13fb1b4f2fc7e3b991e911"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-darwin-arm64.tar.gz"
      sha256 "064d3db0af99b08ea23cedf02f9d133634c65734e27c4af1cb73ab62d640b450"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-amd64.tar.gz"
      sha256 "1f6463f027be5b2b09fc4ceb73e9c8e06af13fea0f775f4f5451cb75e31e6e22"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.6/meepagateway-0.0.6-linux-arm64.tar.gz"
      sha256 "c3291abd6bf5ef2b70b33b0b7ec7dc545c740d13d49ab17a43ea038ae06c6988"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
