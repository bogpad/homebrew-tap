# typed: false
# frozen_string_literal: true

class Meepachat < Formula
  desc "MeepaChat - Self-hosted team chat server (Go + React + Zitadel)"
  homepage "https://github.com/bogpad/meepa"
  version "0.1.0"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/bogpad/meepa/releases/download/v0.1.0/meepa_0.1.0_darwin_arm64.tar.gz"
      sha256 "ec336ac19980898cf4a51bc4b8eb9605e7e75b426e0bdfaceaaf03d1af35bdb2"
    end

    on_intel do
      url "https://github.com/bogpad/meepa/releases/download/v0.1.0/meepa_0.1.0_darwin_amd64.tar.gz"
      sha256 "66358feed4960d22181bc022859cebdcc832a36adcc8381ef0850391642f0a2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bogpad/meepa/releases/download/v0.1.0/meepa_0.1.0_linux_arm64.tar.gz"
      sha256 "03433289daa94b16231e3d1b636fcba89aef1b17a8b18f2e4cd0ee5e2bef8832"
    end

    on_intel do
      url "https://github.com/bogpad/meepa/releases/download/v0.1.0/meepa_0.1.0_linux_amd64.tar.gz"
      sha256 "5be5a381a9e2c9334b933905bc64d47b1952a674dd8316f951435911d0dd89a8"
    end
  end

  def install
    # Current release ships as "meepa", install as "meepachat"
    if File.exist?("meepa")
      bin.install "meepa" => "meepachat"
    elsif File.exist?("meepachat")
      bin.install "meepachat"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meepachat --version 2>&1", 0)
  end
end
