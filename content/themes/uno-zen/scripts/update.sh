<<<<<<< HEAD
#!/bin/bash

. "$PWD"/scripts/utils.sh

welcome

currentVersion=$(git describe --tags "$(git rev-list --tags --max-count=1)")
echo "Current version: $currentVersion."

echo "Searching for updates..."
git fetch --tags origin
latestTag=$(git describe --tags "$(git rev-list --tags --max-count=1)")

if [ "$currentVersion" = "$latestTag" ]; then
  echo "\nYou already have the latest version."
else
  echo "\nUpdating $currentVersion to $latestTag..."
  git merge "$latestTag"
fi
=======
#!/bin/bash

. "$PWD"/scripts/utils.sh

welcome

currentVersion=$(git describe --tags "$(git rev-list --tags --max-count=1)")
echo "Current version: $currentVersion."

echo "Searching for updates..."
git fetch --tags origin
latestTag=$(git describe --tags "$(git rev-list --tags --max-count=1)")

if [ "$currentVersion" = "$latestTag" ]; then
  echo "\nYou already have the latest version."
else
  echo "\nUpdating $currentVersion to $latestTag..."
  git merge "$latestTag"
fi
>>>>>>> 4927e3710fb57e1f176383c701f884cc9f573b04
