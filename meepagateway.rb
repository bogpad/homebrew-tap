# typed: false
# frozen_string_literal: true

class Meepagateway < Formula
  desc "MeepaGateway - Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-amd64.tar.gz"
      sha256 "da1789ad0bbf43bcf1613940653b47b69a4e8ab3aa17eb0d3bc89e54bdcdf70b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-darwin-arm64.tar.gz"
      sha256 "ec1f03f65f67bb54f7583c75739d51585a696f0833c9f102fd23b6b37df903e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-amd64.tar.gz"
      sha256 "c33183ff73e3dced8b743fabf8d372a4d39799a6ace75f8a1e9f914688292c33"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepagateway/releases/download/v0.0.1/meepagateway-0.0.1-linux-arm64.tar.gz"
      sha256 "baf55ae994924f6e5cebf1e513e76b9cbd2ff36b1ab634bd9d69eaecfac01e90"
    end
  end

  def install
    bin.install "meepagateway"
  end
end
