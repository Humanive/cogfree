# CogFree repository guidance

CogFree is a small, composable collection of skills for externalizing cognition.
Keep each skill focused and concise. Preserve observable failure: do not add silent fallbacks that hide missing context. When a skill's workflow changes, update this file and the relevant `SKILL.md` together.

The current V1 consists of 19 skills: `abstract`, `anchor`, `assumptions`, `branch`, `challenge`, `checkpoint`, `clarify`, `compare`, `compress`, `diff`, `grill`, `ground`, `next`, `open`, `reframe`, `restate`, `state`, `timeline`, `unknowns`. Each new skill keeps a minimal prompt; `next` proposes candidate steps rather than choosing for the user. `skills/` is the canonical source for Pi and npx, and the Codex and Claude packages must carry identical copies. Future external-file persistence should be introduced as an explicit, reviewable extension.
