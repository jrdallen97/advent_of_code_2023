#!/bin/bash

# A stupid helper to run all my rust solutions in one go
# Run `cargo build -r` first
for f in target/release/d*; do
  if [[ "$f" =~ d[0-9]+[_0-9]+$ ]]; then
    echo "$f"
    eval time "$f"
    echo
  fi
done
