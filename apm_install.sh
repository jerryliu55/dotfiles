#!/bin/bash

packages=(
"advanced-open-file"
"ex-mode"
"file-icons"
"highlight-selected"
"language-docker"
"language-hcl"
"language-scala"
"linter"
"merge-conflicts"
"minimap"
"minimap-git-diff"
"minimap-highlight-selected"
"pretty-json"
"vim-mode"
"vim-surround"
)

for i in "${packages[@]}" 
do
  eval "apm install $i"
done

