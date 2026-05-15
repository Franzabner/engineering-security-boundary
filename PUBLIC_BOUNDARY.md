# Public Boundary

## Public-Safe Content

- Synthetic public/private/sealed definitions.
- Secrets-handling policy templates.
- Repo visibility decision trees.
- Agent permission boundary matrices.
- Data, client, Foundation, and model-training boundary notes.
- Artifact publication decision tree templates.

## Private / Sealed / Held Content

This repo must not contain secrets, credentials, private URLs, production secrets, sensitive topology, customer data, Foundation-private data, donor data, student data, volunteer data, private corpora, private weights, adapters, private training logs, private prompts, private eval outputs, sealed design files, sealed source, private model artifacts, private logs, endpoints, active client deliverables, or internal company product names.

## Review Rule

Any future release, routing update, or status change beyond public scaffold requires human review, validator pass, boundary/status scan, clean `git diff --check`, clean `git status --short`, and separate approval for routing.
