cask "agentde" do
  version "0.4.3"
  sha256 "32b59e835ce9a904fc4d6c83f0e0afad20483351a7fd031ff291a7932b2d04d3"

  url "https://github.com/AgentDE/agentde/releases/download/v#{version}/AgentDE-#{version}.zip"
  name "AgentDE"
  desc "Native macOS home for terminal coding agents like Claude Code and Codex"
  homepage "https://agentde.github.io/agentde"

  depends_on macos: :sonoma

  app "AgentDE.app"

  caveats <<~EOS
    On first launch, AgentDE's Workstream panel offers to connect Claude Code and Codex
    to the workstream MCP server. Or from a terminal:
      #{appdir}/AgentDE.app/Contents/Resources/register-workstream.sh --yes
  EOS

  zap trash: [
    "~/.config/agentde",
    "~/Library/Logs/AgentDE",
  ]
end
