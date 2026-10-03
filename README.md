# CogFree

Lightweight skills for freeing cognition from working-memory limits.

This collection packages the six small cognitive tools already used as Codex plugins. The canonical skill instructions are kept in `skills/`; the self-contained Codex and Claude plugin packages are generated under `packages/`.

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


## Marketplace installation

For Codex, add this repository as a marketplace and install CogFree:

```bash
codex plugin marketplace add https://github.com/Humanive/cogfree.git
codex plugin add cogfree@cogfree
```

For Claude Code, add the repository as a marketplace and install CogFree:

```bash
claude plugin marketplace add https://github.com/Humanive/cogfree.git
claude plugin install cogfree@cogfree
```
