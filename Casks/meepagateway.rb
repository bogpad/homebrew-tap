cask "meepagateway" do
  version "0.1.0"

  on_arm do
    sha256 "67e6b6215917b31e1a00f483403e623ff7e56a92985a086f2278eb679c3861ea"
    url "https://github.com/bogpad/homebrew-tap/releases/download/v#{version}/meepagateway_#{version}_darwin_arm64.tar.gz"
  end

  name "MeepaGateway"
  desc "Bot gateway for conversational AI agents"
  homepage "https://github.com/bogpad/meepa"

  binary "meepagateway"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/meepagateway"]
  end

  caveats <<~EOS
    To get started:

      1. Create a config file:
         meepagateway init

      2. Edit meepa.toml with your LLM API key and chat platform credentials

      3. Create a soul file for your bot's personality:
         mkdir -p soul && echo '# Your bot personality' > soul/base.md

      4. Run the gateway:
         meepagateway --config meepa.toml

    Docs: https://github.com/bogpad/meepa/tree/main/meepagateway
  EOS
end
