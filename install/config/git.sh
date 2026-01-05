# Set identification from install inputs
if [[ -n "${SHOGUN_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$SHOGUN_USER_NAME"
fi

if [[ -n "${SHOGUN_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$SHOGUN_USER_EMAIL"
fi
