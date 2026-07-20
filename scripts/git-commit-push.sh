set -e

COMMIT_MESSAGE="$1"

git add Formula/

if git diff --cached --quiet; then
  echo "No changes to commit."
  exit 0
fi

git commit -m "$COMMIT_MESSAGE"
git push

echo "Successfully pushed updated Homebrew formulas!"