# Engineering Security Boundary

Status: scaffolded
Publication state: public scaffold
Release state: not released

## What This Repo Is

`engineering-security-boundary` is a Phase 6 public scaffold for public/private/sealed boundary rules, secrets handling, repository visibility rules, agent permissions, data boundaries, client boundaries, Foundation boundaries, model-training boundaries, and artifact publication decision trees.

## What This Repo Is Not

This repo is not a security compliance claim, legal approval, client approval, model-release approval, dataset-release approval, production security program, autonomous agent authority model, or repository visibility change.

## Current Status

| Field | Value |
| --- | --- |
| Status | scaffolded |
| Publication state | public scaffold |
| Release state | not released |
| Public GitHub repo | published scaffold |
| First artifact | `publication-decision-trees/artifact-publication-decision-tree.md` completed as scaffolded public artifact |
| Published artifact | scaffolded |
| Released artifact | not released |
| Profile routing | planned |
| Proof-stack routing | planned |

## Boundary Model

The boundary model separates public examples, private operating material, sealed source, customer-owned data, Foundation-private data, and model-training artifacts.

## Public / Private / Sealed Definitions

- Public: reviewed material safe to publish without exposing sensitive data or unsupported claims.
- Private: material limited to an authorized operating group.
- Sealed: material requiring explicit human approval before any excerpt, mirror, release, or derivative summary leaves its source.

## Secrets Handling

Secrets, credentials, private URLs, production secrets, endpoints, private logs, and sensitive topology are never placed in this repo.

## Repository Visibility Rules

Visibility examples use synthetic decision trees only. They do not create repos, add remotes, push, publish, archive, or change metadata.

## Agent Permission Rules

Agent permission examples define review gates, allowed actions, denied actions, and escalation points. They do not grant autonomous authority.

## Data, Client, Foundation, And Model-Training Boundaries

Customer data, Foundation-private data, donor data, student data, volunteer data, private corpora, private weights, adapters, private training logs, private prompts, and private eval outputs are held out.

## Artifact Publication Decision Trees

Decision trees route synthetic artifacts to public, private, sealed, split, or hold states. They are review aids only.

## Tools And Template Formats

Markdown, CSV/JSON-style policy tables, Mermaid diagrams, and lightweight Python checks are used for scaffold validation.

## Validation Method

Run `scripts/validate-public-boundary.sh`, the plan-listed boundary/status `rg` scan, `git diff --check`, and `git status --short`.

## Links Back After Public Creation

Profile routing and proof-stack routing are planned only. Any link from `Franzabner` or `franzabner-proof-stack` must be handled in a separate reviewed routing patch after human approval.

## First Build Task

First artifact scaffolded: `publication-decision-trees/artifact-publication-decision-tree.md` now covers problem statement, synthetic security/boundary context, public/private/sealed definitions, secrets-handling rules, repo visibility rules, agent permission boundaries, data boundary categories, artifact-publication decision tree, validation questions, proof limits, and public/private/sealed checklist.
