cask "agentde" do
  version "0.4.2"
  sha256 "f1dbd5c928b5605b5c0a552295b32623ba59e958558ca8c5b209f87f1a6484e5"

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
