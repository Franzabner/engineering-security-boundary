# No-Topology AI Workstation Boundary

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This boundary blocks public workstation notes from becoming infrastructure disclosure.

## Allowed Public Pattern

Public workstation documentation may include:

- generic workstation purpose categories;
- synthetic artifact flow labels;
- public/private/sealed classification rules;
- review gates for model, dataset, runbook, and evaluation claims.

## Blocked Material

Do not publish topology, hostnames, IPs, endpoints, ports, private URLs, credentials, tokens, private source paths, private corpora, private weights, adapters, runtime logs, training logs, private eval outputs, live automation paths, production workflows, deployment claims, production-readiness claims, or proof-completion claims.

## Escalation Rule

If a public note needs real environment details, stop migration and escalate to privacy review. Do not replace real details with partial hints or vague masked strings.
