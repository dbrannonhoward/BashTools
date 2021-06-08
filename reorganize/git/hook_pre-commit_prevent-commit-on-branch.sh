#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"
branch_name_to_prevent_commits="$(main)"

if [ "$branch" = "$branch_name_to_prevent_commits" ]; then
	echo "do not commit to $branch_name_to_prevent_commits branch"
	exit 1
fi
