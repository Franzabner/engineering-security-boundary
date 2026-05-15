#!/usr/bin/env bash
set -u

missing=0

required_files=(
  "AGENTS.md"
  "README.md"
  "STATUS.md"
  "PUBLIC_BOUNDARY.md"
  "CLAIMS.md"
  "VALIDATION.md"
  "ARTIFACT_REGISTER.md"
  "REVIEW_LOG.md"
  "requirements.txt"
  "boundary-patterns/README.md"
  "boundary-patterns/public-private-sealed-definitions.md"
  "boundary-patterns/artifact-boundary-classification-template.md"
  "secrets-handling/README.md"
  "secrets-handling/secrets-handling-policy.md"
  "secrets-handling/redaction-checklist.md"
  "repo-visibility/README.md"
  "repo-visibility/repo-visibility-decision-tree.md"
  "agent-permissions/README.md"
  "agent-permissions/agent-permission-boundary-matrix.md"
  "data-boundaries/README.md"
  "data-boundaries/data-boundary-classification.md"
  "client-boundaries/README.md"
  "client-boundaries/client-data-boundary.md"
  "foundation-boundaries/README.md"
  "foundation-boundaries/foundation-data-boundary.md"
  "model-training-boundaries/README.md"
  "model-training-boundaries/model-training-artifact-boundary.md"
  "publication-decision-trees/README.md"
  "publication-decision-trees/artifact-publication-decision-tree.md"
  "diagrams/README.md"
  "diagrams/publication-boundary-flow.mmd"
  "diagrams/repo-visibility-boundary-map.mmd"
  "scripts/validate-public-boundary.sh"
  "scripts/run-boundary-template-check.py"
  "templates/boundary-review-template.md"
  "templates/artifact-publication-review-template.md"
  "templates/agent-permission-review-template.md"
)

for file in "${required_files[@]}"; do
  if [ -f "$file" ]; then
    printf "PASS %s\n" "$file"
  else
    printf "FAIL %s\n" "$file"
    missing=$((missing + 1))
  fi
done

required_terms=(
  "planned"
  "scaffolded"
  "published"
  "released"
  "private/not-public"
  "secrets"
  "credentials"
  "private URLs"
  "production secrets"
  "topology"
  "customer data"
  "Foundation-private"
  "private corpora"
  "private weights"
  "adapters"
  "training logs"
  "private prompts"
  "private eval outputs"
  "sealed source"
  "private logs"
  "endpoints"
  "validation"
  "review"
)

for term in "${required_terms[@]}"; do
  if rg -q "$term" .; then
    printf "PASS term: %s\n" "$term"
  else
    printf "FAIL term: %s\n" "$term"
    missing=$((missing + 1))
  fi
done

blocked_files="$(find . -path ./.git -prune -o \( -iname '*.key' -o -iname '*.pem' -o -iname '*.p12' -o -iname '*.env' -o -iname '*.log' \) -print)"
if [ -z "$blocked_files" ]; then
  printf "PASS blocked secret/log artifact scan\n"
else
  printf "FAIL blocked secret/log artifact scan\n%s\n" "$blocked_files"
  missing=$((missing + 1))
fi

if [ "$missing" -eq 0 ]; then
  printf "Result: PASS - security boundary scaffold is complete.\n"
else
  printf "Result: FAIL - %s required checks failed.\n" "$missing"
fi

exit "$missing"
