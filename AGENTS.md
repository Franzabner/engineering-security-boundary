# AGENTS.md

This repo is a Phase 6 local-only scaffold for public-safe security and publication-boundary policy templates.

## Operating Rules

- Keep all content synthetic and public-safe.
- Use `Status: scaffolded`, `Publication state: private/not-public`, and `Release state: not released`.
- Do not include secrets, credentials, private URLs, production secrets, sensitive topology, endpoints, customer data, Foundation-private data, private corpora, private weights, adapters, private training logs, private prompts, private eval outputs, sealed source, private model artifacts, or private logs.
- Do not imply security compliance, legal approval, client approval, model-release approval, dataset-release approval, or autonomous agent authority.

## Validation

Run `scripts/validate-public-boundary.sh`, the plan-listed `rg` boundary/status scan, `git diff --check`, and `git status --short` before review.
