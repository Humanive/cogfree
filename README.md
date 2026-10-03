# CogFree

Lightweight skills for freeing cognition from working-memory limits.

This collection packages the 19 lightweight cognitive skills. The canonical skill instructions are kept in `skills/`; the self-contained Codex and Claude plugin packages are generated under `packages/`.

## Skills

```text
                              THINKING
                                 |
          +----------------------+----------------------+----------------------+
          |                      |                      |                      |
      Understand              Inspect               Transform               Continue
          |                      |                      |                      |
       restate                 state                 abstract                branch
       clarify                 unknowns              ground                  anchor
       grill                   assumptions           challenge               next
                               open                  compress                checkpoint
                               timeline              reframe
                               diff                  compare
```

- `restate` — restate your intent before continuing.
- `clarify` — ask the single most important clarification question.
- `grill` — probe thinking iteratively through small sets of useful questions.
- `state` — recover the current state of our thinking.
- `unknowns` — map what is known, unknown, implicit, or potentially missing.
- `assumptions` — identify what our current thinking depends on.
- `open` — identify important unresolved parts of our thinking.
- `timeline` — reconstruct how our thinking evolved through meaningful phases.
- `diff` — identify how our thinking changed over the conversation.
- `abstract` — find the most general useful pattern or principle.
- `ground` — return to concrete mechanisms, examples, or situations.
- `challenge` — find the strongest counterarguments, counterexamples, or failure cases.
- `compress` — find the smallest useful representation of our thinking.
- `reframe` — explore a different representation or perspective.
- `compare` — compare competing ideas or interpretations.
- `branch` — identify meaningful directions to explore.
- `anchor` — reconnect the discussion to your original intent.
- `next` — identify useful candidate next steps.
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

The root `skills/` directory is the canonical source. The Codex and Claude packages under `packages/` carry the same 19 skills in their host-specific plugin layouts. The Pi package uses the standard `package.json` + `skills/` layout and currently provides skills only; it does not add executable Pi tools or extensions.

## Marketplace installation

The repository includes marketplace descriptors at `.codex-plugin/marketplace.json` and `.claude-plugin/marketplace.json` for the commands above.
