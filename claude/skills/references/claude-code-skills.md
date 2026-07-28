# Claude Code Skills — Reference

> Source: [shanraisshan/claude-code-best-practice](https://github.com/shanraisshan/claude-code-best-practice/blob/main/best-practice/claude-skills.md)
> Last synced: 2026-07-28

Frontmatter fields and official bundled skills for Claude Code.

---

## Frontmatter Fields (17)

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | No | Display name and `/slash-command` identifier. Defaults to the directory name if omitted |
| `description` | string | Recommended | What the skill does. Shown in autocomplete and used by Claude for auto-discovery |
| `when_to_use` | string | No | Additional context for when Claude should invoke the skill — trigger phrases and example requests. Appended to `description` in the skill listing, counts toward the 1,536-character cap |
| `argument-hint` | string | No | Hint shown during autocomplete (e.g., `[issue-number]`, `[filename]`) |
| `arguments` | string/list | No | Named positional arguments for `$name` substitution in the skill content. Accepts a space-separated string or a YAML list — names map to argument positions in order |
| `disable-model-invocation` | boolean | No | Set `true` to prevent Claude from automatically invoking this skill |
| `user-invocable` | boolean | No | Set `false` to hide from the `/` menu — skill becomes background knowledge only, intended for agent preloading |
| `allowed-tools` | string | No | Tools allowed without permission prompts when this skill is active |
| `disallowed-tools` | string/list | No | Tools removed from Claude's available pool while the skill is active (e.g. block `AskUserQuestion` for a background loop). Accepts a space/comma-separated string or YAML list — the restriction clears on the next message |
| `model` | string | No | Model to use when this skill runs (e.g., `haiku`, `sonnet`, `opus`) |
| `effort` | string | No | Override the model effort level when invoked (`low`, `medium`, `high`, `xhigh`, `max`) |
| `context` | string | No | Set to `fork` to run the skill in an isolated subagent context |
| `agent` | string | No | Subagent type when `context: fork` is set (default: `general-purpose`) |
| `background` | boolean | No | Only applies with `context: fork`. Set to `false` to wait for the forked subagent's result in the invoking turn instead of running in the background (default: `true`). Requires v2.1.218+ |
| `hooks` | object | No | Lifecycle hooks scoped to this skill |
| `paths` | string/list | No | Glob patterns that limit when the skill auto-activates. Accepts a comma-separated string or YAML list — Claude loads the skill only when working with matching files |
| `shell` | string | No | Shell for `` !`command` `` blocks — `bash` (default) or `powershell`. Requires `CLAUDE_CODE_USE_POWERSHELL_TOOL=1` |

---

## Official Bundled Skills (13)

| # | Skill | Description |
|---|-------|-------------|
| 1 | `code-review` | Review the current diff for correctness bugs at a chosen effort level (low/medium: fewer, high-confidence findings; high→max: broader coverage) — `--comment` posts findings as inline PR comments |
| 2 | `batch` | Run commands across multiple files in bulk |
| 3 | `debug` | Debug failing commands or code issues |
| 4 | `loop` | Run a prompt or slash command on a recurring interval (up to 3 days) |
| 5 | `claude-api` | Build apps with the Claude API or Anthropic SDK — triggers on `anthropic` / `@anthropic-ai/sdk` imports |
| 6 | `fewer-permission-prompts` | Scan transcripts for common read-only Bash/MCP calls and add a prioritized allowlist to `.claude/settings.json` to reduce permission prompts |
| 7 | `run` | Launch and drive the project's app to see a change working in the real app (not just tests). Requires v2.1.145 |
| 8 | `verify` | Build and run the app to confirm a code change does what it should, without falling back to tests or type checks. Requires v2.1.145 |
| 9 | `run-skill-generator` | Teaches `/run` and `/verify` how to build and launch the project — records a per-project launch recipe at `.claude/skills/run-<name>/`. Requires v2.1.145 |
| 10 | `simplify` | Review changed code for cleanup opportunities (reuse, simplification, efficiency, abstraction level), four review agents in parallel. From v2.1.154 does **not** hunt for correctness bugs — use `/code-review` for that |
| 11 | `design-sync` | Convert your repo's React design system and upload it to Claude Design — optionally name the design system (e.g., `/design-sync Acme DS`). First-time sync verifies every component and can take hours on large repos. Available on the Anthropic API only |
| 12 | `dataviz` | Design charts, graphs, and dashboards with a color-palette validator for accessible, consistent visualizations — triggers on requests for any chart, graph, plot, or data visualization in any output medium. Introduced v2.1.198 |
| 13 | `doctor` | Setup/health checkup for your Claude Code configuration. The one bundled skill exempt from `disableBundledSkills` — stays typable even when that setting is on. Reclassified from a built-in command to a bundled skill in v2.1.205 |

---

## Sources

- [Claude Code Skills — Docs](https://code.claude.com/docs/en/skills)
- [Official Skills Repository](https://github.com/anthropics/skills/tree/main/skills)
- [Claude Code CHANGELOG](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md)
