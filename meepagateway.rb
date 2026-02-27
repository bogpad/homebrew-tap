# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.4.64"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.64/meepagateway-0.4.64-darwin-amd64.tar.gz"
      sha256 "964fd95768ecb6e245b50b76b83644a6ec3a50251e1ddd95c572d16da9ff7f2b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.64/meepagateway-0.4.64-darwin-arm64.tar.gz"
      sha256 "9b4c7e57ae4e0fa933b062e73b7089b64bc19f5ea9a57ec5fa77700db1322edf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.64/meepagateway-0.4.64-linux-amd64.tar.gz"
      sha256 "dec15a6af1bf9fe2122df363847cb1850a3db03315c9881c3f93b30837ab3bd3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.4.64/meepagateway-0.4.64-linux-arm64.tar.gz"
      sha256 "5de05e3b16cdcf480e2ed99565f029dbf0c0f911c4b76240838a749dce567eb7"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
