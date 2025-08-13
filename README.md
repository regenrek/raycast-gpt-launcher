# Raycast ChatGPT Launcher Scripts

A collection of Raycast scripts for quickly launching ChatGPT with different GPT-5 models and configurations.

## Scripts Overview

### 🤖 chatgpt-5-auto.sh
Opens ChatGPT with the GPT-5 Auto model in your default browser. Optionally accepts a query parameter.

### 🤖 chatgpt-5-fast.sh
Opens ChatGPT with the GPT-5 Fast (Instant) model in your default browser. Optionally accepts a query parameter.

### 🤖 chatgpt-5-thinking.sh
Opens ChatGPT with the GPT-5 Thinking model in your default browser. Optionally accepts a query parameter.

### 🤖 chatgpt-5-pro.sh
Opens ChatGPT with the GPT-5 Pro model in your default browser. Optionally accepts a query parameter.

### 🔒 chatgpt-5-temp-instant.sh
Opens ChatGPT with GPT-5 Fast model in temporary chat mode (no chat history saved). Optionally accepts a query parameter.

### 🔒 chatgpt-temp-5-thinking.sh
Opens ChatGPT with GPT-5 Thinking model in temporary chat mode (no chat history saved). Optionally accepts a query parameter.

### ✏️ chatgpt-5-grammar-fix.sh
Opens ChatGPT with GPT-5 Thinking model and a specialized grammar correction prompt. Takes text as input and provides:
- Grammar and syntax corrections
- Improved readability version
- Three alternative style variations

## Installation

1. Copy the scripts to your Raycast scripts folder
2. Make sure scripts have executable permissions:
   ```bash
   chmod +x *.sh
   ```
3. Access scripts through Raycast command palette

## Requirements

- macOS
- [Raycast](https://www.raycast.com/) app installed
- Active ChatGPT account

## Usage

Simply search for the script name in Raycast and press Enter. All scripts now support optional query parameters - you can either:
- Run without parameters to open ChatGPT with the selected model
- Provide a query to immediately start a conversation with your question

For the grammar fix script, you'll be prompted to enter text that will be processed with a specialized grammar correction prompt.

## Author

Created by [@kregenrek](https://github.com/kregenrek)