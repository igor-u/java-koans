#!/bin/bash

changed_files=$(git status --porcelain | awk '{print $2}')

for file in $changed_files; do

  git add "$file"

  commit_message="ponder: $(echo "$file" | sed 's/^koans\/src\///' | sed 's/\.java$//')"

  git commit -m "$commit_message"

done

exit 0
