---
name: restate-goal
description: Use when the user asks you to restate, reconstruct, reflect back, or verify what you think their goals are and what problem they are actually trying to solve before proposing a solution. Also use when the task is ambiguous enough that solving the wrong problem is a material risk.
---

# Restate Goal / Reconstruct Problem Frame

Your job is not to summarize the conversation. Your job is to reconstruct the user's current **problem frame** in your own words before solving it.

## Core principle

Treat the user's messages as observations from which you infer a latent state:

```text
observed words / examples / complaints / requests
                  ↓
         infer latent intent
                  ↓
   goal + problem + constraints + success
```

The output should answer:

> What do I currently think this person is trying to accomplish, and what is the actual obstacle or mismatch preventing it?

## Required output

Default to these four parts:

### 1. Goal
State the desired end state, not merely the immediate action requested.

Bad:
- "You want me to build a plugin."

Better:
- "You want a reusable way to make an agent verify its understanding before it commits to a solution."

### 2. Problem
State the underlying problem or failure mode that makes the goal non-trivial.

Look for gaps such as:
- observation ≠ intent
- proxy ≠ real objective
- requested action ≠ desired outcome
- local fix ≠ recurring system problem
- user's mental model ≠ agent's inferred model

Express this causally when possible:

```text
Because X, the agent tends to do Y, which causes Z.
```

### 3. Constraints / preferences
Include only constraints that materially change the solution space, such as:
- required level of abstraction
- workflow preferences
- tools / environment
- time / cost / safety limits
- what the user explicitly does NOT want

Do not dump every detail from the conversation.

### 4. Success criteria
State what would make the user say: "yes, that's what I meant."

Prefer observable criteria over vague words.

## Evidence vs inference

Clearly distinguish:

- **Explicit:** directly stated by the user.
- **Inferred:** your best reconstruction from context.
- **Uncertain:** plausible but not yet well-supported.

Do not present an inference as something the user definitely said.

## Compression rule

Prefer the smallest frame that explains the most observations.

A good restatement often has this form:

```text
You are not mainly trying to do [surface action].
You are trying to achieve [deeper goal].
The core problem is [mechanism / mismatch].
The important constraints are [few decisive constraints].
Success means [observable end state].
```

But do not force this wording if another structure is clearer.

## Do not solve too early

When this skill is invoked explicitly, stop after reconstructing the frame unless the user also asks for a solution.

If the user asks for both understanding and solving:
1. reconstruct the frame first;
2. make the boundary visible;
3. then solve the reconstructed problem rather than the surface wording.

## Clarification policy

Do not ask questions merely because some uncertainty exists.

Ask only when two or more plausible problem frames would lead to materially different actions and the current evidence cannot discriminate between them.

Otherwise, state your best current interpretation and mark uncertainty.

## Quality checks

Before answering, verify:

- Did I state an end goal rather than repeat the request?
- Did I identify the failure mode / obstacle?
- Did I separate explicit facts from inference?
- Did I avoid irrelevant biography or conversational detail?
- Could the user correct my model easily?
- Is this a compressed problem frame rather than a generic summary?

## Example

User:
"Restate in your own words what you think my goals are and what problem I'm trying to solve."

Good response shape:

```text
My current read:

Goal — You want a reusable mechanism that forces an agent to reconstruct your intent before acting, so you can catch goal drift early.

Problem — Natural-language requests are only partial observations of what you actually want. An agent can satisfy the literal request while optimizing the wrong latent objective. Once it starts solving, that mistaken frame compounds through the rest of the workflow.

Constraints — The restatement should be compact, in the agent's own words, and should distinguish what you explicitly said from what it inferred.

Success — You should be able to read the restatement and immediately say either “yes, exactly” or point to the specific part of the agent's model that is wrong.
```

This is better than a chronological summary because it reconstructs the latent task the user is trying to accomplish.
