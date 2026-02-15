# typed: false
# frozen_string_literal: true

class Meepachat < Formula
  desc "MeepaChat - Self-hosted team chat server (Go + React + Zitadel)"
  homepage "https://github.com/bogpad/meepa"
  version "0.1.0-beta"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bogpad/homebrew-tap/releases/download/v0.1.0-beta/meepachat_0.1.0-beta_darwin_amd64.tar.gz"
      sha256 "9dc9c3fc31b59e7a34bcf1b5feb80e3e1d588fb42370ca04421ba09489754b48"

      def install
        bin.install "meepachat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bogpad/homebrew-tap/releases/download/v0.1.0-beta/meepachat_0.1.0-beta_darwin_arm64.tar.gz"
      sha256 "08c44c9a870de731adbda5b9705b408e54d19f7240063f60bef55eecd93d0268"

      def install
        bin.install "meepachat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepa/releases/download/v0.1.0-beta/meepachat_0.1.0-beta_linux_amd64.tar.gz"
      sha256 "2c15c965fcc478fe3600de36167030432497d72dd69162e866b434736bf5ff4d"
      def install
        bin.install "meepachat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bogpad/meepa/releases/download/v0.1.0-beta/meepachat_0.1.0-beta_linux_arm64.tar.gz"
      sha256 "49a1acee4e5e286998b3ab16e1a3ca555064dce3217194da68194b4d314a5b9e"
      def install
        bin.install "meepachat"
      end
    end
  end
end
