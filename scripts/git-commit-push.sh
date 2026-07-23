set -e

PROJECT_NAME="${1:-jar-cart}"
TAG_REF="${2:-v0.0.0}"
COMMIT_MESSAGE="chore➕: update formulas for ${TAG_REF} ${PROJECT_NAME}"

git add Formula/

if git diff --cached --quiet; then
  echo "No changes to commit."
  exit 0
fi

git commit -m "$COMMIT_MESSAGE"
git push

echo "Successfully pushed updated Homebrew formulas for ${PROJECT_NAME} (${TAG_REF})!"