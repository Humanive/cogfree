# CogFree

Lightweight skills for freeing cognition from working-memory limits.

This collection packages the six small cognitive tools already used as Codex plugins. The source skill instructions are kept in `skills/`; the corresponding plugin manifests are kept in `plugins/`.

## Skills

- `restate` — restate the current goal in clear, simple terms.
- `state` — recover the current state of our thinking.
- `timeline` — reconstruct how our thinking evolved through meaningful phases.
- `diff` — identify how our thinking changed over the conversation.
- `open` — identify the important unresolved parts of our thinking.
- `checkpoint` — create a resumable checkpoint of our current thinking.

The V1 stays intentionally lightweight. Future versions may add explicit external-file records without changing the core skill contracts.

## Install

Use the common skills package with any supported agent:

```bash
npx skills add Humanive/cogfree
```

Install only a selected skill:

```bash
npx skills add Humanive/cogfree --skill restate
```

Use the Codex plugin package from a local checkout:

```bash
codex --plugin-dir packages/codex
```

Use the Claude Code plugin package from a local checkout:

```bash
claude --plugin-dir packages/claude
```

The Claude marketplace descriptor is `claude-marketplace.json`; copy it to `.claude-plugin/marketplace.json` in a marketplace repository when publishing a marketplace.
