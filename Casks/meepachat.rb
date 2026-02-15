cask "meepachat" do
  version "0.1.0"

  on_arm do
    sha256 "ec336ac19980898cf4a51bc4b8eb9605e7e75b426e0bdfaceaaf03d1af35bdb2"
    url "https://github.com/bogpad/homebrew-tap/releases/download/v#{version}/meepa_#{version}_darwin_arm64.tar.gz"
  end

  on_intel do
    sha256 "66358feed4960d22181bc022859cebdcc832a36adcc8381ef0850391642f0a2f"
    url "https://github.com/bogpad/homebrew-tap/releases/download/v#{version}/meepa_#{version}_darwin_amd64.tar.gz"
  end

  name "MeepaChat"
  desc "Self-hosted team chat server"
  homepage "https://github.com/bogpad/meepa"

  binary "meepa", target: "meepachat"
end
