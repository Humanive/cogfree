# CogFree

Lightweight skills for freeing cognition from working-memory limits.

This collection packages the seven small cognitive tools already used as Codex plugins. The canonical skill instructions are kept in `skills/`; the self-contained Codex and Claude plugin packages are generated under `packages/`.

## Skills

- `clarify` — ask the single most important question needed to give a useful answer.
- `restate` — restate the current goal in clear, simple terms.
- `state` — recover the current state of our thinking.
- `timeline` — reconstruct how our thinking evolved through meaningful phases.
- `diff` — identify how our thinking changed over the conversation.
- `open` — identify the important unresolved parts of our thinking.
- `checkpoint` — create a resumable checkpoint of our current thinking.

The V1 stays intentionally lightweight. Future versions may add explicit external-file records without changing the core skill contracts.

## Install

### Claude Code

Run in Claude Code:

```text
/plugin marketplace add Humanive/cogfree
/plugin install cogfree@cogfree
```

### Codex

Run in your terminal:

```bash
codex plugin marketplace add Humanive/cogfree
codex plugin add cogfree@cogfree
```

### Pi

Run in your terminal:

```bash
pi install git:github.com/Humanive/cogfree
```

### Any supported agent

Install the shared skills directly with `npx skills`:

```bash
npx skills add Humanive/cogfree
```

Install only one skill:

```bash
npx skills add Humanive/cogfree --skill restate
```

The root `skills/` directory is the canonical source. The Codex and Claude packages under `packages/` carry the same seven skills in their host-specific plugin layouts. The Pi package uses the standard `package.json` + `skills/` layout and currently provides skills only; it does not add executable Pi tools or extensions.

## Marketplace installation

The repository includes marketplace descriptors at `.codex-plugin/marketplace.json` and `.claude-plugin/marketplace.json` for the commands above.
