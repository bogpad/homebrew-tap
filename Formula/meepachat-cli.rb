# typed: false
# frozen_string_literal: true

class MeepachatCli < Formula
  desc "MeepaChat CLI - Command-line client for MeepaChat"
  homepage "https://github.com/bogpad/meepa"
  version "0.1.0"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/bogpad/homebrew-tap/releases/download/v0.1.0/meepa-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "d7c3f049729e4cf433964d5a670bcfe4fb883ceb41dc320d894794f9be4c9d66"
    end

    on_intel do
      url "https://github.com/bogpad/homebrew-tap/releases/download/v0.1.0/meepa-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "72e926db5602e932f692a945e066cfd514ef8a4a84f9f18839fb652ededc0c63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bogpad/homebrew-tap/releases/download/v0.1.0/meepa-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "e0d755b775a18caf41f7e64c0520214604a4185a36cccd95fec20011bfcc394a"
    end

    on_intel do
      url "https://github.com/bogpad/homebrew-tap/releases/download/v0.1.0/meepa-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "c581e694c59146b2a5d7c812354d227fa7ea608d454c986749e8f7297b7cbe71"
    end
  end

  def install
    # Current release ships as "meepa-cli", install as "meepachat-cli"
    if File.exist?("meepa-cli")
      bin.install "meepa-cli" => "meepachat-cli"
    elsif File.exist?("meepachat-cli")
      bin.install "meepachat-cli"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meepachat-cli --version 2>&1", 0)
  end
end
