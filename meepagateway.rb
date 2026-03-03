# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.37"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.37/meepagateway-0.5.37-darwin-amd64.tar.gz"
      sha256 "10e5ffefedcbeb7365369da531792e144bae26d5eca2a442aec0c59490b54725"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.37/meepagateway-0.5.37-darwin-arm64.tar.gz"
      sha256 "bf558aba08c807f93a7dd79adc5e4b26370281e746765c8120cf5f55c1e85099"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.37/meepagateway-0.5.37-linux-amd64.tar.gz"
      sha256 "f06afcabe298d156cd6fb40e45dd6431844f9a8be13b05840250abfb3f2f87a2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.37/meepagateway-0.5.37-linux-arm64.tar.gz"
      sha256 "92583f0dc085e6f5ee2104cd08e818f8a17b76dd82e34cfe203cf429f3071244"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
