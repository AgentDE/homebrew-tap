cask "agentde" do
  version "0.4.2"
  sha256 "5e381854167c774adc1745a5c7d75fe1d837f0dc2a73821c03572dd8aa88f855"

  url "https://github.com/AgentDE/agentde/releases/download/v#{version}/AgentDE-#{version}.zip"
  name "AgentDE"
  desc "Native macOS home for terminal coding agents like Claude Code and Codex"
  homepage "https://agentde.github.io/agentde"

  depends_on macos: :sonoma

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
