#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ChatGPT 5 Grammar Fix
# @raycast.mode silent
# @raycast.argument1 { "type": "text", "placeholder": "Text to fix" }

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName ChatGPT

# Documentation:
# @raycast.description Opens ChatGPT with GPT-5 Thinking model and grammar fix prompt
# @raycast.author kregenrek
# @raycast.authorURL https://github.com/kregenrek

# URL encode the text parameter
encoded_text=$(printf '%s' "$1" | jq -sRr @uri)

# Open ChatGPT with gpt-5-thinking model and grammar fix prompt
open "https://chatgpt.com/?model=gpt-5-thinking&q=Please%20help%20me%20improve%20the%20following%20text.%20First%2C%20translate%20the%20text%20to%20English%20if%20it%27s%20not%20already%20in%20English.%20Then%20I%20need%20three%20different%20outputs%3A%0A%0A1.%20Grammar%20and%20syntax%20fixed%20version%20%28correct%20any%20errors%20while%20keeping%20the%20original%20meaning%29%0A2.%20Grammar%20and%20syntax%20fixed%20but%20make%20it%20clear%20and%20easy%20to%20understand%20%28don%27t%20change%20my%20writing%20style%20too%20much%2C%20just%20make%20it%20more%20readable%29%0A3.%20Three%20alternative%20versions%20of%20my%20text%20with%20different%20styles%20or%20approaches%0A%0AHere%20is%20my%20text%3A%0A%0A%3Ctext%3E${encoded_text}%3C/text%3E"