set -e

PROJECT_NAME="$1"
TAG_REF="$2"
LINUX_SHA256="$3"
MACOS_SHA256="$4"

if [[ -z "$PROJECT_NAME" || -z "$TAG_REF" || -z "$LINUX_SHA256" || -z "$MACOS_SHA256" ]]; then
  echo "Error: Missing required arguments. Expected: <project_name> <tag_ref> <linux_sha256> <macos_sha256>" >&2
  exit 1
fi

SCRIPT_PATH="./scripts/update-${PROJECT_NAME}-formulas.sh"
if [ ! -f "$SCRIPT_PATH" ]; then
  echo "Error: Formula generation script not found for project '${PROJECT_NAME}' at path '${SCRIPT_PATH}'. Aborting process." >&2
  exit 1
fi

if [[ ! "$TAG_REF" =~ ^[vV]?[0-9]+\.[0-9]+\.[0-9]+(-[a-zA-Z0-9.]+)?$ ]]; then
  echo "Error: Invalid version format '$TAG_REF'. Expected format like v0.6.0, V0.6.0, or 0.6.0. Aborting process." >&2
  exit 1
fi

if [[ ! "$LINUX_SHA256" =~ ^[a-fA-F0-9]{64}$ ]]; then
  echo "Error: Invalid Linux SHA-256 hash '$LINUX_SHA256'. Expected a 64-character hex string. Aborting process." >&2
  exit 1
fi

if [[ ! "$MACOS_SHA256" =~ ^[a-fA-F0-9]{64}$ ]]; then
  echo "Error: Invalid macOS SHA-256 hash '$MACOS_SHA256'. Expected a 64-character hex string. Aborting process." >&2
  exit 1
fi

echo "All inputs and project scripts successfully validated for project '$PROJECT_NAME' (tag $TAG_REF)"