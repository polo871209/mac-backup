#!/bin/bash
# backup config and package list

BACKUP_DIR="/Users/polo/Documents/backups"

# Brewfile
cd "$BACKUP_DIR"
brew bundle dump --force

# zsh config
cat /Users/polo/.zprofile > "$BACKUP_DIR/.zprofile"
cat /Users/polo/.zshrc > "$BACKUP_DIR/.zshrc"
cat /Users/polo/.zpreztorc > "$BACKUP_DIR/.zpreztorc"

# p10k config
cat /Users/polo/.zsh/.p10k.zsh > "$BACKUP_DIR/.p10k.zsh"