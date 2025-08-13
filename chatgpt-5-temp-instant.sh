#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ChatGPT 5 Fast Temp
# @raycast.mode silent
# @raycast.argument1 { "type": "text", "placeholder": "Query (optional)", "optional": true }

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName ChatGPT

# Documentation:
# @raycast.description Opens ChatGPT with temporary chat and GPT-5 Instant model
# @raycast.author kregenrek
# @raycast.authorURL https://github.com/kregenrek

# Base URL
base_url="https://chatgpt.com/?model=gpt-5-instant&temporary-chat=true"

# Check if query parameter is provided
if [ -n "$1" ]; then
    # URL encode the query parameter
    encoded_query=$(printf '%s' "$1" | jq -sRr @uri)
    # Open ChatGPT with model, temporary chat, and query
    open "${base_url}&q=${encoded_query}"
else
    # Open ChatGPT with just the model and temporary chat
    open "$base_url"
fi