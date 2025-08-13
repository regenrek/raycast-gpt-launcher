#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ChatGPT 5 Thinking
# @raycast.mode silent
# @raycast.argument1 { "type": "text", "placeholder": "Query (optional)", "optional": true }

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName ChatGPT

# Documentation:
# @raycast.description Opens ChatGPT with GPT-5 Thinking model
# @raycast.author kregenrek
# @raycast.authorURL https://github.com/kregenrek

# Base URL
base_url="https://chatgpt.com/?model=gpt-5-thinking"

# Check if query parameter is provided
if [ -n "$1" ]; then
    # URL encode the query parameter
    encoded_query=$(printf '%s' "$1" | jq -sRr @uri)
    # Open ChatGPT with model and query
    open "${base_url}&q=${encoded_query}"
else
    # Open ChatGPT with just the model
    open "$base_url"
fi