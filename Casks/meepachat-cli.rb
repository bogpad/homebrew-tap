cask "meepachat-cli" do
  version "0.1.0"

  on_arm do
    sha256 "d7c3f049729e4cf433964d5a670bcfe4fb883ceb41dc320d894794f9be4c9d66"
    url "https://github.com/bogpad/homebrew-tap/releases/download/v#{version}/meepa-cli_#{version}_darwin_arm64.tar.gz"
  end

  on_intel do
    sha256 "72e926db5602e932f692a945e066cfd514ef8a4a84f9f18839fb652ededc0c63"
    url "https://github.com/bogpad/homebrew-tap/releases/download/v#{version}/meepa-cli_#{version}_darwin_amd64.tar.gz"
  end

  name "MeepaChat CLI"
  desc "Command-line client for MeepaChat"
  homepage "https://github.com/bogpad/meepa"

  binary "meepa-cli", target: "meepachat-cli"
end
