#!/usr/bin/env bash

set -e

echo "🚀 GitHub Project Bootstrap"

# Verify GitHub CLI
if ! command -v gh >/dev/null 2>&1; then
    echo "❌ GitHub CLI (gh) is not installed."
    exit 1
fi

# Verify authentication
if ! gh auth status >/dev/null 2>&1; then
    echo "❌ Please run: gh auth login"
    exit 1
fi

echo "✅ GitHub CLI ready"

echo ""
echo "Repository:"
gh repo view --json nameWithOwner --jq '.nameWithOwner'

echo ""
echo "Creating labels..."

labels=(
"architecture:5319e7:Architecture and design"
"development:0e8a16:Development workflow"
"cleanup:d4c5f9:Repository cleanup"
"refactor:fbca04:Code improvements"
"deployment:1d76db:Deployment work"
)

for item in "${labels[@]}"
do
IFS=":" read -r name color desc <<< "$item"

gh label create "$name" \
    --color "$color" \
    --description "$desc" \
    --force >/dev/null

echo "✓ $name"
done

echo ""
echo "Done."
