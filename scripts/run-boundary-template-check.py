#!/usr/bin/env python3
"""Lightweight scaffold check for boundary templates."""

from pathlib import Path

required = [
    Path("publication-decision-trees/artifact-publication-decision-tree.md"),
    Path("boundary-patterns/public-private-sealed-definitions.md"),
    Path("templates/boundary-review-template.md"),
]

missing = [str(path) for path in required if not path.exists()]
if missing:
    raise SystemExit("Missing required boundary files: " + ", ".join(missing))

print("PASS security boundary template check")
