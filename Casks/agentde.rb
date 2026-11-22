cask "agentde" do
  version "0.4.1"
  sha256 "5fccb54b6de79c1bd6f0e35a730a836a368a21c2a9d171bd11e7011fb8f1929e"

  url "https://github.com/AgentDE/agentde/releases/download/v#{version}/AgentDE-#{version}.zip"
  name "AgentDE"
  desc "Native macOS home for terminal coding agents like Claude Code and Codex"
  homepage "https://agentde.github.io/agentde"

  depends_on macos: ">= :sonoma"

  app "AgentDE.app"

  caveats <<~EOS
    To register the workstream MCP server and hooks for Claude Code and Codex (once):
      #{appdir}/AgentDE.app/Contents/Resources/register-workstream.sh --yes
  EOS

  zap trash: [
    "~/.config/agentde",
    "~/Library/Logs/AgentDE",
  ]
end
