# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.5.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.4/meepagateway-0.5.4-darwin-amd64.tar.gz"
      sha256 "89e3bb4db9435ac8394eea68bd78ffd43e68a8f97114ae92427ff2329c1bf168"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.4/meepagateway-0.5.4-darwin-arm64.tar.gz"
      sha256 "ed8bc98c07c6025db8efd2d18bb6d5e87d8953996b355b46a657d72cb7d51a40"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.4/meepagateway-0.5.4-linux-amd64.tar.gz"
      sha256 "07032e3cd292cad527ddf87ec7ff91c868e0711ea289dbdd6fb1628415af5680"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.5.4/meepagateway-0.5.4-linux-arm64.tar.gz"
      sha256 "db5b3880fa023e4b0ed8850b0eb201c03cb65a8dbbdb7ed089051ca24095a800"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
