# CogFree

Lightweight skills for freeing cognition from working-memory limits.

This collection packages 28 lightweight cognitive skills. The canonical skill instructions are kept in `skills/`; the self-contained Codex and Claude plugin packages are generated under `packages/`.

## Skills

### Understand

- `restate` — restate your intent before continuing.
- `clarify` — ask the single most important clarification question.
- `grill` — probe thinking iteratively through small sets of useful questions.
- `reconstruct` — derive a concept by rebuilding why it had to be invented.

### Inspect

- `state` — recover the current state of our thinking.
- `unknowns` — map what is known, unknown, implicit, or potentially missing.
- `assumptions` — identify what our current thinking depends on.
- `open` — identify important unresolved parts of our thinking.
- `timeline` — reconstruct how our thinking evolved through meaningful phases.
- `diff` — identify how our thinking changed over the conversation.

### Transform

- `abstract` — find the most general useful pattern or principle.
- `ground` — return to concrete mechanisms, examples, or situations.
- `compress` — find the smallest useful representation of our thinking.
- `reframe` — explore a different representation or perspective.
- `compare` — compare competing ideas or interpretations.
- `synthesize` — combine important ideas into one coherent model.
- `transfer` — apply an insight to other problems, domains, or situations.

### Evaluate

- `challenge` — find the strongest counterarguments, counterexamples, or failure cases.
- `prediction` — derive observable predictions from our current understanding.
- `test` — test whether our current understanding holds.
- `verify` — check important claims against available evidence.

### Continue

- `branch` — identify meaningful directions to explore.
- `anchor` — reconnect the discussion to your original intent.
- `checkpoint` — create a resumable checkpoint of our current thinking.

### Execute

- `next` — identify useful candidate next steps.
- `prioritize` — rank questions or branches by expected value for our goal.
- `act` — turn the response into one clear, executable next action.
- `delegate` — turn a request into a clear, verifiable agent brief.

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

The root `skills/` directory is the canonical source. The Claude and Codex plugins use the host-specific layouts under `packages/`. Pi and `npx skills` install directly from the root `skills/` directory. The Pi package does not add executable tools or extensions.

## Marketplace installation

The repository includes marketplace descriptors at `.codex-plugin/marketplace.json` and `.claude-plugin/marketplace.json` for the commands above.
