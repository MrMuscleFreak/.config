#!/usr/bin/env bash
set -e

if ! repo_root=$(git rev-parse --show-toplevel 2>/dev/null); then
    echo "Not inside a git repository."
    exit 1
fi

cd "$repo_root" || exit 1

if ! url=$(git remote get-url origin 2>/dev/null); then
    echo "No remote 'origin' found."
    exit 1
fi

if [[ $url == git@* ]]; then
    url="${url#git@}"
    url="${url/:/\/}"
    url="https://$url"
fi

url="${url%.git}"

if [[ $url != *github.com* ]]; then
    echo "This repository is not hosted on GitHub."
    exit 1
fi

open "$url"
