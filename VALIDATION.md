# Validation

Run:

```bash
bash scripts/validate-public-boundary.sh
rg -n "planned|scaffolded|published|released|private/not-public|secrets|credentials|private URLs|production secrets|topology|customer data|Foundation-private|private corpora|private weights|adapters|training logs|private prompts|private eval outputs|sealed source|private logs|endpoints|validation|review" .
git diff --check
git status --short
```

The `rg` scan is expected to find boundary terms in exclusion and review language, not as exposed content or approval claims.
